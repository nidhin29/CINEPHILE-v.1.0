part of 'movie_watcher_bloc.dart';

@freezed
class MovieWatcherState with _$MovieWatcherState {
  const factory MovieWatcherState.initial() = _Initial;
  const factory MovieWatcherState.loadInProgress() = _LoadInProgress;
  const factory MovieWatcherState.loadSuccess(KtList<Movie> lists) = _LoadSuccess;
  const factory MovieWatcherState.loadFailure(NoteFailure noteFailure) = _LoadFailure;
}
