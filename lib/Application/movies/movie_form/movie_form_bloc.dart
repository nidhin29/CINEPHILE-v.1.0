//import 'package:app_3/Application/misc/primitive.dart';
import 'package:app_3/Domain/auth/notes/i_movie_repository.dart';
//import 'package:app_3/Domain/auth/notes/list.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/note_failure.dart';
import 'package:app_3/Domain/auth/notes/valueobjects.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'movie_form_event.dart';
part 'movie_form_state.dart';
part 'movie_form_bloc.freezed.dart';

@injectable
class NoteFormBloc extends Bloc<MovieFormEvent, MovieFormState> {
  final INoteRepository _noteRepository;

  NoteFormBloc(this._noteRepository) : super(MovieFormState.initial());

  @override
  Stream<MovieFormState> mapEventToState(
    MovieFormEvent event,
  ) async* {
    yield* event.map(
      initialized: (e) async* {
        yield e.initialNoteOption.fold(
          () => state,
          (initialMovie) => state.copyWith(
            mlist: initialMovie,
            isEditing: true,
          ),
        );
      },
      saved: (e) async* {
        Either<NoteFailure, Unit>? failureOrSuccess;

        yield state.copyWith(
          isSaving: true,
          saveFailureOrSuccessOption: none(),
        );

        if (state.mlist.failureOption.isNone()) {
          failureOrSuccess = state.isEditing
              ? await _noteRepository.update(state.mlist)
              : await _noteRepository.create(state.mlist);
        }

        yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      moviesChanged: (e) async* {
        yield state.copyWith(
          mlist: state.mlist.copyWith(body: MovieBody(e.bodystr)),
          saveFailureOrSuccessOption: none(),
        );
      },
      categoryChanged: (e) async* {
        yield state.copyWith(
          mlist: state.mlist.copyWith(body1: CategoryBody(e.bodystr1)),
          saveFailureOrSuccessOption: none()
        );
      },
      colorChanged: (e) async* {
        yield state.copyWith(
          mlist: state.mlist.copyWith(
              color: MovieColor(e.color)),
              saveFailureOrSuccessOption: none()
        );
      },
    );
  }
}
