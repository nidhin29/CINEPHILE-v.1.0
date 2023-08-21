// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Mlist {
  UniqueId get id => throw _privateConstructorUsedError;
  MovieList<Movie> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MlistCopyWith<Mlist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MlistCopyWith<$Res> {
  factory $MlistCopyWith(Mlist value, $Res Function(Mlist) then) =
      _$MlistCopyWithImpl<$Res, Mlist>;
  @useResult
  $Res call({UniqueId id, MovieList<Movie> list});
}

/// @nodoc
class _$MlistCopyWithImpl<$Res, $Val extends Mlist>
    implements $MlistCopyWith<$Res> {
  _$MlistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as MovieList<Movie>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MlistCopyWith<$Res> implements $MlistCopyWith<$Res> {
  factory _$$_MlistCopyWith(_$_Mlist value, $Res Function(_$_Mlist) then) =
      __$$_MlistCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, MovieList<Movie> list});
}

/// @nodoc
class __$$_MlistCopyWithImpl<$Res> extends _$MlistCopyWithImpl<$Res, _$_Mlist>
    implements _$$_MlistCopyWith<$Res> {
  __$$_MlistCopyWithImpl(_$_Mlist _value, $Res Function(_$_Mlist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_$_Mlist(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as MovieList<Movie>,
    ));
  }
}

/// @nodoc

class _$_Mlist extends _Mlist {
  const _$_Mlist({required this.id, required this.list}) : super._();

  @override
  final UniqueId id;
  @override
  final MovieList<Movie> list;

  @override
  String toString() {
    return 'Mlist(id: $id, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mlist &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.list, list) || other.list == list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, list);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MlistCopyWith<_$_Mlist> get copyWith =>
      __$$_MlistCopyWithImpl<_$_Mlist>(this, _$identity);
}

abstract class _Mlist extends Mlist {
  const factory _Mlist(
      {required final UniqueId id,
      required final MovieList<Movie> list}) = _$_Mlist;
  const _Mlist._() : super._();

  @override
  UniqueId get id;
  @override
  MovieList<Movie> get list;
  @override
  @JsonKey(ignore: true)
  _$$_MlistCopyWith<_$_Mlist> get copyWith =>
      throw _privateConstructorUsedError;
}
