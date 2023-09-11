part of 'movie_watcher_bloc.dart';

@freezed
class MovieWatcherEvent with _$MovieWatcherEvent {
  const factory MovieWatcherEvent.watchAllstarted() = _WatchAllStarted;
  

}