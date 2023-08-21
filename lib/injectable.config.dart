// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:app_3/Application/auth/auth_bloc.dart' as _i8;
import 'package:app_3/Application/sign-in/sign_in_bloc.dart' as _i7;
import 'package:app_3/Domain/auth/auth/i_authfailure.dart' as _i5;
import 'package:app_3/Infrastructure/auth/core/firebase_injectable_module.dart'
    as _i9;
import 'package:app_3/Infrastructure/auth/firebase_auth.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
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
    gh.lazySingleton<_i4.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i5.IauthFailure>(() => _i6.FirebaseAuthFailure(
          gh<_i3.FirebaseAuth>(),
          gh<_i4.GoogleSignIn>(),
        ));
    gh.factory<_i7.SignInBloc>(() => _i7.SignInBloc(gh<_i5.IauthFailure>()));
    gh.factory<_i8.AuthBloc>(() => _i8.AuthBloc(gh<_i5.IauthFailure>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i9.FirebaseInjectableModule {}
