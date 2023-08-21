// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailstring) emailchanged,
    required TResult Function(String passwordstring) passwordchanged,
    required TResult Function() signinwithemailandpassword,
    required TResult Function() registerwithemailandpassword,
    required TResult Function() signinwithgoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailstring)? emailchanged,
    TResult? Function(String passwordstring)? passwordchanged,
    TResult? Function()? signinwithemailandpassword,
    TResult? Function()? registerwithemailandpassword,
    TResult? Function()? signinwithgoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailstring)? emailchanged,
    TResult Function(String passwordstring)? passwordchanged,
    TResult Function()? signinwithemailandpassword,
    TResult Function()? registerwithemailandpassword,
    TResult Function()? signinwithgoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailchanged,
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(SignInWithEmailAndPassword value)
        signinwithemailandpassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerwithemailandpassword,
    required TResult Function(SignInWithGoogle value) signinwithgoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailchanged,
    TResult? Function(PasswordChanged value)? passwordchanged,
    TResult? Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult? Function(SignInWithGoogle value)? signinwithgoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailchanged,
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult Function(SignInWithGoogle value)? signinwithgoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String emailstring});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailstring = null,
  }) {
    return _then(_$EmailChanged(
      null == emailstring
          ? _value.emailstring
          : emailstring // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged(this.emailstring);

  @override
  final String emailstring;

  @override
  String toString() {
    return 'AuthEvent.emailchanged(emailstring: $emailstring)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            (identical(other.emailstring, emailstring) ||
                other.emailstring == emailstring));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailstring);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailstring) emailchanged,
    required TResult Function(String passwordstring) passwordchanged,
    required TResult Function() signinwithemailandpassword,
    required TResult Function() registerwithemailandpassword,
    required TResult Function() signinwithgoogle,
  }) {
    return emailchanged(emailstring);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailstring)? emailchanged,
    TResult? Function(String passwordstring)? passwordchanged,
    TResult? Function()? signinwithemailandpassword,
    TResult? Function()? registerwithemailandpassword,
    TResult? Function()? signinwithgoogle,
  }) {
    return emailchanged?.call(emailstring);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailstring)? emailchanged,
    TResult Function(String passwordstring)? passwordchanged,
    TResult Function()? signinwithemailandpassword,
    TResult Function()? registerwithemailandpassword,
    TResult Function()? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (emailchanged != null) {
      return emailchanged(emailstring);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailchanged,
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(SignInWithEmailAndPassword value)
        signinwithemailandpassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerwithemailandpassword,
    required TResult Function(SignInWithGoogle value) signinwithgoogle,
  }) {
    return emailchanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailchanged,
    TResult? Function(PasswordChanged value)? passwordchanged,
    TResult? Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult? Function(SignInWithGoogle value)? signinwithgoogle,
  }) {
    return emailchanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailchanged,
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult Function(SignInWithGoogle value)? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (emailchanged != null) {
      return emailchanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements AuthEvent {
  const factory EmailChanged(final String emailstring) = _$EmailChanged;

  String get emailstring;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String passwordstring});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordstring = null,
  }) {
    return _then(_$PasswordChanged(
      null == passwordstring
          ? _value.passwordstring
          : passwordstring // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordstring);

  @override
  final String passwordstring;

  @override
  String toString() {
    return 'AuthEvent.passwordchanged(passwordstring: $passwordstring)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.passwordstring, passwordstring) ||
                other.passwordstring == passwordstring));
  }

  @override
  int get hashCode => Object.hash(runtimeType, passwordstring);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailstring) emailchanged,
    required TResult Function(String passwordstring) passwordchanged,
    required TResult Function() signinwithemailandpassword,
    required TResult Function() registerwithemailandpassword,
    required TResult Function() signinwithgoogle,
  }) {
    return passwordchanged(passwordstring);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailstring)? emailchanged,
    TResult? Function(String passwordstring)? passwordchanged,
    TResult? Function()? signinwithemailandpassword,
    TResult? Function()? registerwithemailandpassword,
    TResult? Function()? signinwithgoogle,
  }) {
    return passwordchanged?.call(passwordstring);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailstring)? emailchanged,
    TResult Function(String passwordstring)? passwordchanged,
    TResult Function()? signinwithemailandpassword,
    TResult Function()? registerwithemailandpassword,
    TResult Function()? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (passwordchanged != null) {
      return passwordchanged(passwordstring);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailchanged,
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(SignInWithEmailAndPassword value)
        signinwithemailandpassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerwithemailandpassword,
    required TResult Function(SignInWithGoogle value) signinwithgoogle,
  }) {
    return passwordchanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailchanged,
    TResult? Function(PasswordChanged value)? passwordchanged,
    TResult? Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult? Function(SignInWithGoogle value)? signinwithgoogle,
  }) {
    return passwordchanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailchanged,
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult Function(SignInWithGoogle value)? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (passwordchanged != null) {
      return passwordchanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements AuthEvent {
  const factory PasswordChanged(final String passwordstring) =
      _$PasswordChanged;

  String get passwordstring;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordCopyWith(
          _$SignInWithEmailAndPassword value,
          $Res Function(_$SignInWithEmailAndPassword) then) =
      __$$SignInWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithEmailAndPassword>
    implements _$$SignInWithEmailAndPasswordCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordCopyWithImpl(
      _$SignInWithEmailAndPassword _value,
      $Res Function(_$SignInWithEmailAndPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailAndPassword implements SignInWithEmailAndPassword {
  const _$SignInWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.signinwithemailandpassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailstring) emailchanged,
    required TResult Function(String passwordstring) passwordchanged,
    required TResult Function() signinwithemailandpassword,
    required TResult Function() registerwithemailandpassword,
    required TResult Function() signinwithgoogle,
  }) {
    return signinwithemailandpassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailstring)? emailchanged,
    TResult? Function(String passwordstring)? passwordchanged,
    TResult? Function()? signinwithemailandpassword,
    TResult? Function()? registerwithemailandpassword,
    TResult? Function()? signinwithgoogle,
  }) {
    return signinwithemailandpassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailstring)? emailchanged,
    TResult Function(String passwordstring)? passwordchanged,
    TResult Function()? signinwithemailandpassword,
    TResult Function()? registerwithemailandpassword,
    TResult Function()? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (signinwithemailandpassword != null) {
      return signinwithemailandpassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailchanged,
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(SignInWithEmailAndPassword value)
        signinwithemailandpassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerwithemailandpassword,
    required TResult Function(SignInWithGoogle value) signinwithgoogle,
  }) {
    return signinwithemailandpassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailchanged,
    TResult? Function(PasswordChanged value)? passwordchanged,
    TResult? Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult? Function(SignInWithGoogle value)? signinwithgoogle,
  }) {
    return signinwithemailandpassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailchanged,
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult Function(SignInWithGoogle value)? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (signinwithemailandpassword != null) {
      return signinwithemailandpassword(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPassword implements AuthEvent {
  const factory SignInWithEmailAndPassword() = _$SignInWithEmailAndPassword;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordCopyWith(
          _$RegisterWithEmailAndPassword value,
          $Res Function(_$RegisterWithEmailAndPassword) then) =
      __$$RegisterWithEmailAndPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterWithEmailAndPassword>
    implements _$$RegisterWithEmailAndPasswordCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordCopyWithImpl(
      _$RegisterWithEmailAndPassword _value,
      $Res Function(_$RegisterWithEmailAndPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPassword implements RegisterWithEmailAndPassword {
  const _$RegisterWithEmailAndPassword();

  @override
  String toString() {
    return 'AuthEvent.registerwithemailandpassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailstring) emailchanged,
    required TResult Function(String passwordstring) passwordchanged,
    required TResult Function() signinwithemailandpassword,
    required TResult Function() registerwithemailandpassword,
    required TResult Function() signinwithgoogle,
  }) {
    return registerwithemailandpassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailstring)? emailchanged,
    TResult? Function(String passwordstring)? passwordchanged,
    TResult? Function()? signinwithemailandpassword,
    TResult? Function()? registerwithemailandpassword,
    TResult? Function()? signinwithgoogle,
  }) {
    return registerwithemailandpassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailstring)? emailchanged,
    TResult Function(String passwordstring)? passwordchanged,
    TResult Function()? signinwithemailandpassword,
    TResult Function()? registerwithemailandpassword,
    TResult Function()? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (registerwithemailandpassword != null) {
      return registerwithemailandpassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailchanged,
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(SignInWithEmailAndPassword value)
        signinwithemailandpassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerwithemailandpassword,
    required TResult Function(SignInWithGoogle value) signinwithgoogle,
  }) {
    return registerwithemailandpassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailchanged,
    TResult? Function(PasswordChanged value)? passwordchanged,
    TResult? Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult? Function(SignInWithGoogle value)? signinwithgoogle,
  }) {
    return registerwithemailandpassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailchanged,
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult Function(SignInWithGoogle value)? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (registerwithemailandpassword != null) {
      return registerwithemailandpassword(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPassword implements AuthEvent {
  const factory RegisterWithEmailAndPassword() = _$RegisterWithEmailAndPassword;
}

/// @nodoc
abstract class _$$SignInWithGoogleCopyWith<$Res> {
  factory _$$SignInWithGoogleCopyWith(
          _$SignInWithGoogle value, $Res Function(_$SignInWithGoogle) then) =
      __$$SignInWithGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGoogleCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignInWithGoogle>
    implements _$$SignInWithGoogleCopyWith<$Res> {
  __$$SignInWithGoogleCopyWithImpl(
      _$SignInWithGoogle _value, $Res Function(_$SignInWithGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGoogle implements SignInWithGoogle {
  const _$SignInWithGoogle();

  @override
  String toString() {
    return 'AuthEvent.signinwithgoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SignInWithGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailstring) emailchanged,
    required TResult Function(String passwordstring) passwordchanged,
    required TResult Function() signinwithemailandpassword,
    required TResult Function() registerwithemailandpassword,
    required TResult Function() signinwithgoogle,
  }) {
    return signinwithgoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String emailstring)? emailchanged,
    TResult? Function(String passwordstring)? passwordchanged,
    TResult? Function()? signinwithemailandpassword,
    TResult? Function()? registerwithemailandpassword,
    TResult? Function()? signinwithgoogle,
  }) {
    return signinwithgoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailstring)? emailchanged,
    TResult Function(String passwordstring)? passwordchanged,
    TResult Function()? signinwithemailandpassword,
    TResult Function()? registerwithemailandpassword,
    TResult Function()? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (signinwithgoogle != null) {
      return signinwithgoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailchanged,
    required TResult Function(PasswordChanged value) passwordchanged,
    required TResult Function(SignInWithEmailAndPassword value)
        signinwithemailandpassword,
    required TResult Function(RegisterWithEmailAndPassword value)
        registerwithemailandpassword,
    required TResult Function(SignInWithGoogle value) signinwithgoogle,
  }) {
    return signinwithgoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailchanged,
    TResult? Function(PasswordChanged value)? passwordchanged,
    TResult? Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult? Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult? Function(SignInWithGoogle value)? signinwithgoogle,
  }) {
    return signinwithgoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailchanged,
    TResult Function(PasswordChanged value)? passwordchanged,
    TResult Function(SignInWithEmailAndPassword value)?
        signinwithemailandpassword,
    TResult Function(RegisterWithEmailAndPassword value)?
        registerwithemailandpassword,
    TResult Function(SignInWithGoogle value)? signinwithgoogle,
    required TResult orElse(),
  }) {
    if (signinwithgoogle != null) {
      return signinwithgoogle(this);
    }
    return orElse();
  }
}

abstract class SignInWithGoogle implements AuthEvent {
  const factory SignInWithGoogle() = _$SignInWithGoogle;
}

/// @nodoc
mixin _$AuthState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get showerrormessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authfailureorsuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showerrormessages,
      Option<Either<AuthFailure, Unit>> authfailureorsuccess});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showerrormessages = null,
    Object? authfailureorsuccess = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showerrormessages: null == showerrormessages
          ? _value.showerrormessages
          : showerrormessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authfailureorsuccess: null == authfailureorsuccess
          ? _value.authfailureorsuccess
          : authfailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      bool showerrormessages,
      Option<Either<AuthFailure, Unit>> authfailureorsuccess});
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showerrormessages = null,
    Object? authfailureorsuccess = null,
  }) {
    return _then(_$_AuthState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showerrormessages: null == showerrormessages
          ? _value.showerrormessages
          : showerrormessages // ignore: cast_nullable_to_non_nullable
              as bool,
      authfailureorsuccess: null == authfailureorsuccess
          ? _value.authfailureorsuccess
          : authfailureorsuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.showerrormessages,
      required this.authfailureorsuccess});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final bool showerrormessages;
  @override
  final Option<Either<AuthFailure, Unit>> authfailureorsuccess;

  @override
  String toString() {
    return 'AuthState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, showerrormessages: $showerrormessages, authfailureorsuccess: $authfailureorsuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showerrormessages, showerrormessages) ||
                other.showerrormessages == showerrormessages) &&
            (identical(other.authfailureorsuccess, authfailureorsuccess) ||
                other.authfailureorsuccess == authfailureorsuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, emailAddress, password,
      isSubmitting, showerrormessages, authfailureorsuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool isSubmitting,
      required final bool showerrormessages,
      required final Option<Either<AuthFailure, Unit>>
          authfailureorsuccess}) = _$_AuthState;

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  bool get showerrormessages;
  @override
  Option<Either<AuthFailure, Unit>> get authfailureorsuccess;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
