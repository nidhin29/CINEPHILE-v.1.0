// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_3/Application/auth/auth_bloc.dart' as _i14;
import 'package:app_3/Application/movies/movie_actor/movie_actor_bloc.dart'
    as _i10;
import 'package:app_3/Application/movies/movie_form/movie_form_bloc.dart'
    as _i12;
import 'package:app_3/Application/movies/movie_watcher/movie_watcher_bloc.dart'
    as _i11;
import 'package:app_3/Application/sign-in/sign_in_bloc.dart' as _i13;
import 'package:app_3/Domain/auth/auth/i_authfailure.dart' as _i8;
import 'package:app_3/Domain/auth/notes/i_movie_repository.dart' as _i6;
import 'package:app_3/Infrastructure/auth/core/firebase_injectable_module.dart'
    as _i15;
import 'package:app_3/Infrastructure/auth/firebase_auth.dart' as _i9;
import 'package:app_3/Infrastructure/movies/note_repository.dart' as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.lazySingleton<_i3.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i4.FirebaseFirestore>(
        () => firebaseInjectableModule.firebasefirestore);
    gh.lazySingleton<_i5.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i6.INoteRepository>(
        () => _i7.NoteRepository(gh<_i4.FirebaseFirestore>()));
    gh.lazySingleton<_i8.IauthFailure>(() => _i9.FirebaseAuthFailure(
          gh<_i3.FirebaseAuth>(),
          gh<_i5.GoogleSignIn>(),
        ));
    gh.factory<_i10.MovieActorBloc>(
        () => _i10.MovieActorBloc(gh<_i6.INoteRepository>()));
    gh.factory<_i11.MovieWatcherBloc>(
        () => _i11.MovieWatcherBloc(gh<_i6.INoteRepository>()));
    gh.factory<_i12.NoteFormBloc>(
        () => _i12.NoteFormBloc(gh<_i6.INoteRepository>()));
    gh.factory<_i13.SignInBloc>(() => _i13.SignInBloc(gh<_i8.IauthFailure>()));
    gh.factory<_i14.AuthBloc>(() => _i14.AuthBloc(gh<_i8.IauthFailure>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
