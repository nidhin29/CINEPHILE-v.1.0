// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'movie_form_bloc.dart';

@freezed
class MovieFormState with _$MovieFormState {
  const factory MovieFormState(
      {required bool? showErrorMessages,
       required Movie mlist,
        required bool isEditing,
         required bool isSaving,
          required Option saveFailureOrSuccessOption}
  ) = _MovieFormState;
   
    factory MovieFormState.initial() => MovieFormState(
        mlist: Movie.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaving: false,
        saveFailureOrSuccessOption: none(),
      );
}
