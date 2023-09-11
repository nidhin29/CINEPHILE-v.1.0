import 'dart:async';
import 'package:app_3/Domain/auth/notes/i_movie_repository.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/note_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
part 'movie_watcher_event.dart';
part 'movie_watcher_state.dart';
part 'movie_watcher_bloc.freezed.dart';

@injectable
class MovieWatcherBloc extends Bloc<MovieWatcherEvent, MovieWatcherState> {
  final INoteRepository _noteRepository;

  MovieWatcherBloc(
    this._noteRepository,
  ) : super(const MovieWatcherState.initial());

  @override
  Stream<MovieWatcherState> mapEventToState(
    MovieWatcherEvent event,
  ) async* {
    yield const MovieWatcherState.loadInProgress();
    final notes = await _noteRepository.watchAll();
    yield notes.fold(
      (l) => MovieWatcherState.loadFailure(l),
      (r) => MovieWatcherState.loadSuccess(r),
    );
  }
}
