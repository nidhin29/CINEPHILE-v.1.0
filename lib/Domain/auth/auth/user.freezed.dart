// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User1 {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $User1CopyWith<User1> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $User1CopyWith<$Res> {
  factory $User1CopyWith(User1 value, $Res Function(User1) then) =
      _$User1CopyWithImpl<$Res, User1>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class _$User1CopyWithImpl<$Res, $Val extends User1>
    implements $User1CopyWith<$Res> {
  _$User1CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_User1CopyWith<$Res> implements $User1CopyWith<$Res> {
  factory _$$_User1CopyWith(_$_User1 value, $Res Function(_$_User1) then) =
      __$$_User1CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$_User1CopyWithImpl<$Res> extends _$User1CopyWithImpl<$Res, _$_User1>
    implements _$$_User1CopyWith<$Res> {
  __$$_User1CopyWithImpl(_$_User1 _value, $Res Function(_$_User1) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_User1(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$_User1 implements _User1 {
  const _$_User1({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'User1(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User1 &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_User1CopyWith<_$_User1> get copyWith =>
      __$$_User1CopyWithImpl<_$_User1>(this, _$identity);
}

abstract class _User1 implements User1 {
  const factory _User1({required final UniqueId id}) = _$_User1;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$$_User1CopyWith<_$_User1> get copyWith =>
      throw _privateConstructorUsedError;
}
