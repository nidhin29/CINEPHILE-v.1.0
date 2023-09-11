// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MoviesDto _$MoviesDtoFromJson(Map<String, dynamic> json) {
  return _MoviesDto.fromJson(json);
}

/// @nodoc
mixin _$MoviesDto {
  String? get id => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get body1 => throw _privateConstructorUsedError;
  int? get color => throw _privateConstructorUsedError;
  @ServerTimeStampConverter()
  FieldValue? get serverTimeStamp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoviesDtoCopyWith<MoviesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesDtoCopyWith<$Res> {
  factory $MoviesDtoCopyWith(MoviesDto value, $Res Function(MoviesDto) then) =
      _$MoviesDtoCopyWithImpl<$Res, MoviesDto>;
  @useResult
  $Res call(
      {String? id,
      String? body,
      String? body1,
      int? color,
      @ServerTimeStampConverter() FieldValue? serverTimeStamp});
}

/// @nodoc
class _$MoviesDtoCopyWithImpl<$Res, $Val extends MoviesDto>
    implements $MoviesDtoCopyWith<$Res> {
  _$MoviesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? body1 = freezed,
    Object? color = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      body1: freezed == body1
          ? _value.body1
          : body1 // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      serverTimeStamp: freezed == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MoviesDtoCopyWith<$Res> implements $MoviesDtoCopyWith<$Res> {
  factory _$$_MoviesDtoCopyWith(
          _$_MoviesDto value, $Res Function(_$_MoviesDto) then) =
      __$$_MoviesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? body,
      String? body1,
      int? color,
      @ServerTimeStampConverter() FieldValue? serverTimeStamp});
}

/// @nodoc
class __$$_MoviesDtoCopyWithImpl<$Res>
    extends _$MoviesDtoCopyWithImpl<$Res, _$_MoviesDto>
    implements _$$_MoviesDtoCopyWith<$Res> {
  __$$_MoviesDtoCopyWithImpl(
      _$_MoviesDto _value, $Res Function(_$_MoviesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? body = freezed,
    Object? body1 = freezed,
    Object? color = freezed,
    Object? serverTimeStamp = freezed,
  }) {
    return _then(_$_MoviesDto(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      body1: freezed == body1
          ? _value.body1
          : body1 // ignore: cast_nullable_to_non_nullable
              as String?,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int?,
      serverTimeStamp: freezed == serverTimeStamp
          ? _value.serverTimeStamp
          : serverTimeStamp // ignore: cast_nullable_to_non_nullable
              as FieldValue?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MoviesDto extends _MoviesDto {
  const _$_MoviesDto(
      {this.id,
      this.body,
      this.body1,
      this.color,
      @ServerTimeStampConverter() this.serverTimeStamp})
      : super._();

  factory _$_MoviesDto.fromJson(Map<String, dynamic> json) =>
      _$$_MoviesDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? body;
  @override
  final String? body1;
  @override
  final int? color;
  @override
  @ServerTimeStampConverter()
  final FieldValue? serverTimeStamp;

  @override
  String toString() {
    return 'MoviesDto(id: $id, body: $body, body1: $body1, color: $color, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MoviesDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.body1, body1) || other.body1 == body1) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                other.serverTimeStamp == serverTimeStamp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, body, body1, color, serverTimeStamp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MoviesDtoCopyWith<_$_MoviesDto> get copyWith =>
      __$$_MoviesDtoCopyWithImpl<_$_MoviesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MoviesDtoToJson(
      this,
    );
  }
}

abstract class _MoviesDto extends MoviesDto {
  const factory _MoviesDto(
          {final String? id,
          final String? body,
          final String? body1,
          final int? color,
          @ServerTimeStampConverter() final FieldValue? serverTimeStamp}) =
      _$_MoviesDto;
  const _MoviesDto._() : super._();

  factory _MoviesDto.fromJson(Map<String, dynamic> json) =
      _$_MoviesDto.fromJson;

  @override
  String? get id;
  @override
  String? get body;
  @override
  String? get body1;
  @override
  int? get color;
  @override
  @ServerTimeStampConverter()
  FieldValue? get serverTimeStamp;
  @override
  @JsonKey(ignore: true)
  _$$_MoviesDtoCopyWith<_$_MoviesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
