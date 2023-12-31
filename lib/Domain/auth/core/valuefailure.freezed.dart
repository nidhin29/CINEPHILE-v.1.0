// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'valuefailure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<Type> {
  Type get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type failedValue) invalidEmail,
    required TResult Function(Type failedValue) shortPassword,
    required TResult Function(Type failedValue) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type failedValue)? invalidEmail,
    TResult? Function(Type failedValue)? shortPassword,
    TResult? Function(Type failedValue)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type failedValue)? invalidEmail,
    TResult Function(Type failedValue)? shortPassword,
    TResult Function(Type failedValue)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<Type> value) invalidEmail,
    required TResult Function(ShortPassword<Type> value) shortPassword,
    required TResult Function(Empty<Type> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<Type> value)? invalidEmail,
    TResult? Function(ShortPassword<Type> value)? shortPassword,
    TResult? Function(Empty<Type> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<Type> value)? invalidEmail,
    TResult Function(ShortPassword<Type> value)? shortPassword,
    TResult Function(Empty<Type> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<Type, ValueFailure<Type>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<Type, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<Type> value, $Res Function(ValueFailure<Type>) then) =
      _$ValueFailureCopyWithImpl<Type, $Res, ValueFailure<Type>>;
  @useResult
  $Res call({Type failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<Type, $Res, $Val extends ValueFailure<Type>>
    implements $ValueFailureCopyWith<Type, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as Type,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidEmailCopyWith<Type, $Res>
    implements $ValueFailureCopyWith<Type, $Res> {
  factory _$$InvalidEmailCopyWith(_$InvalidEmail<Type> value,
          $Res Function(_$InvalidEmail<Type>) then) =
      __$$InvalidEmailCopyWithImpl<Type, $Res>;
  @override
  @useResult
  $Res call({Type failedValue});
}

/// @nodoc
class __$$InvalidEmailCopyWithImpl<Type, $Res>
    extends _$ValueFailureCopyWithImpl<Type, $Res, _$InvalidEmail<Type>>
    implements _$$InvalidEmailCopyWith<Type, $Res> {
  __$$InvalidEmailCopyWithImpl(
      _$InvalidEmail<Type> _value, $Res Function(_$InvalidEmail<Type>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidEmail<Type>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$InvalidEmail<Type>
    with DiagnosticableTreeMixin
    implements InvalidEmail<Type> {
  const _$InvalidEmail({required this.failedValue});

  @override
  final Type failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$Type>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$Type>.invalidEmail'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidEmail<Type> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidEmailCopyWith<Type, _$InvalidEmail<Type>> get copyWith =>
      __$$InvalidEmailCopyWithImpl<Type, _$InvalidEmail<Type>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type failedValue) invalidEmail,
    required TResult Function(Type failedValue) shortPassword,
    required TResult Function(Type failedValue) empty,
  }) {
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type failedValue)? invalidEmail,
    TResult? Function(Type failedValue)? shortPassword,
    TResult? Function(Type failedValue)? empty,
  }) {
    return invalidEmail?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type failedValue)? invalidEmail,
    TResult Function(Type failedValue)? shortPassword,
    TResult Function(Type failedValue)? empty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<Type> value) invalidEmail,
    required TResult Function(ShortPassword<Type> value) shortPassword,
    required TResult Function(Empty<Type> value) empty,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<Type> value)? invalidEmail,
    TResult? Function(ShortPassword<Type> value)? shortPassword,
    TResult? Function(Empty<Type> value)? empty,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<Type> value)? invalidEmail,
    TResult Function(ShortPassword<Type> value)? shortPassword,
    TResult Function(Empty<Type> value)? empty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<Type> implements ValueFailure<Type> {
  const factory InvalidEmail({required final Type failedValue}) =
      _$InvalidEmail<Type>;

  @override
  Type get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidEmailCopyWith<Type, _$InvalidEmail<Type>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShortPasswordCopyWith<Type, $Res>
    implements $ValueFailureCopyWith<Type, $Res> {
  factory _$$ShortPasswordCopyWith(_$ShortPassword<Type> value,
          $Res Function(_$ShortPassword<Type>) then) =
      __$$ShortPasswordCopyWithImpl<Type, $Res>;
  @override
  @useResult
  $Res call({Type failedValue});
}

/// @nodoc
class __$$ShortPasswordCopyWithImpl<Type, $Res>
    extends _$ValueFailureCopyWithImpl<Type, $Res, _$ShortPassword<Type>>
    implements _$$ShortPasswordCopyWith<Type, $Res> {
  __$$ShortPasswordCopyWithImpl(
      _$ShortPassword<Type> _value, $Res Function(_$ShortPassword<Type>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ShortPassword<Type>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$ShortPassword<Type>
    with DiagnosticableTreeMixin
    implements ShortPassword<Type> {
  const _$ShortPassword({required this.failedValue});

  @override
  final Type failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$Type>.shortPassword(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$Type>.shortPassword'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShortPassword<Type> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShortPasswordCopyWith<Type, _$ShortPassword<Type>> get copyWith =>
      __$$ShortPasswordCopyWithImpl<Type, _$ShortPassword<Type>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type failedValue) invalidEmail,
    required TResult Function(Type failedValue) shortPassword,
    required TResult Function(Type failedValue) empty,
  }) {
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type failedValue)? invalidEmail,
    TResult? Function(Type failedValue)? shortPassword,
    TResult? Function(Type failedValue)? empty,
  }) {
    return shortPassword?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type failedValue)? invalidEmail,
    TResult Function(Type failedValue)? shortPassword,
    TResult Function(Type failedValue)? empty,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<Type> value) invalidEmail,
    required TResult Function(ShortPassword<Type> value) shortPassword,
    required TResult Function(Empty<Type> value) empty,
  }) {
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<Type> value)? invalidEmail,
    TResult? Function(ShortPassword<Type> value)? shortPassword,
    TResult? Function(Empty<Type> value)? empty,
  }) {
    return shortPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<Type> value)? invalidEmail,
    TResult Function(ShortPassword<Type> value)? shortPassword,
    TResult Function(Empty<Type> value)? empty,
    required TResult orElse(),
  }) {
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<Type> implements ValueFailure<Type> {
  const factory ShortPassword({required final Type failedValue}) =
      _$ShortPassword<Type>;

  @override
  Type get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$ShortPasswordCopyWith<Type, _$ShortPassword<Type>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyCopyWith<Type, $Res>
    implements $ValueFailureCopyWith<Type, $Res> {
  factory _$$EmptyCopyWith(
          _$Empty<Type> value, $Res Function(_$Empty<Type>) then) =
      __$$EmptyCopyWithImpl<Type, $Res>;
  @override
  @useResult
  $Res call({Type failedValue});
}

/// @nodoc
class __$$EmptyCopyWithImpl<Type, $Res>
    extends _$ValueFailureCopyWithImpl<Type, $Res, _$Empty<Type>>
    implements _$$EmptyCopyWith<Type, $Res> {
  __$$EmptyCopyWithImpl(
      _$Empty<Type> _value, $Res Function(_$Empty<Type>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$Empty<Type>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$Empty<Type> with DiagnosticableTreeMixin implements Empty<Type> {
  const _$Empty({required this.failedValue});

  @override
  final Type failedValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ValueFailure<$Type>.empty(failedValue: $failedValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ValueFailure<$Type>.empty'))
      ..add(DiagnosticsProperty('failedValue', failedValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Empty<Type> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyCopyWith<Type, _$Empty<Type>> get copyWith =>
      __$$EmptyCopyWithImpl<Type, _$Empty<Type>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type failedValue) invalidEmail,
    required TResult Function(Type failedValue) shortPassword,
    required TResult Function(Type failedValue) empty,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type failedValue)? invalidEmail,
    TResult? Function(Type failedValue)? shortPassword,
    TResult? Function(Type failedValue)? empty,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type failedValue)? invalidEmail,
    TResult Function(Type failedValue)? shortPassword,
    TResult Function(Type failedValue)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidEmail<Type> value) invalidEmail,
    required TResult Function(ShortPassword<Type> value) shortPassword,
    required TResult Function(Empty<Type> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidEmail<Type> value)? invalidEmail,
    TResult? Function(ShortPassword<Type> value)? shortPassword,
    TResult? Function(Empty<Type> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidEmail<Type> value)? invalidEmail,
    TResult Function(ShortPassword<Type> value)? shortPassword,
    TResult Function(Empty<Type> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class Empty<Type> implements ValueFailure<Type> {
  const factory Empty({required final Type failedValue}) = _$Empty<Type>;

  @override
  Type get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyCopyWith<Type, _$Empty<Type>> get copyWith =>
      throw _privateConstructorUsedError;
}
