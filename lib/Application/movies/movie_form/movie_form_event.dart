part of 'movie_form_bloc.dart';

@freezed
abstract class MovieFormEvent with _$MovieFormEvent {
  const factory MovieFormEvent.initialized(Option<Movie> initialNoteOption) =
      _Initialized;
  const factory MovieFormEvent.moviesChanged(String bodystr) =
      _MoviesChanged;
  const factory MovieFormEvent.categoryChanged(String bodystr1) =
      _CategoriesChanged;    
      const factory MovieFormEvent.colorChanged(Color color) =
      _ColorChanged;
  const factory MovieFormEvent.saved() = _Saved;
}