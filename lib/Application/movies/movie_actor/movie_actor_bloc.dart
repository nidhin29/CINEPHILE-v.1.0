import 'package:app_3/Domain/auth/notes/i_movie_repository.dart';
import 'package:app_3/Domain/auth/notes/movie.dart';
import 'package:app_3/Domain/auth/notes/note_failure.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
part 'movie_actor_event.dart';
part 'movie_actor_state.dart';
part 'movie_actor_bloc.freezed.dart';

@injectable
class MovieActorBloc extends Bloc<MovieActorEvent, MovieActorState> {
  final INoteRepository _noteRepository;
 

  MovieActorBloc(
    this._noteRepository,
   
  ) : super(const MovieActorState.initial());
  @override
  Stream<MovieActorState> mapEventToState(MovieActorEvent event) async* {
    yield const MovieActorState.actionInProgress();
    final possibleFailure = await _noteRepository.delete(event.list);
    yield possibleFailure.fold((l) => MovieActorState.deleteFailure(l), (_) {
      return const MovieActorState.deleteSuccess();
    });
   
  }
}
