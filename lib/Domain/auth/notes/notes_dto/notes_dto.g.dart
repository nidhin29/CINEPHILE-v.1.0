// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notes_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MoviesDto _$$_MoviesDtoFromJson(Map<String, dynamic> json) => _$_MoviesDto(
      id: json['id'] as String?,
      body: json['body'] as String?,
      body1: json['body1'] as String?,
      color: json['color'] as int?,
      serverTimeStamp: _$JsonConverterFromJson<Object, FieldValue>(
          json['serverTimeStamp'], const ServerTimeStampConverter().fromJson),
    );

Map<String, dynamic> _$$_MoviesDtoToJson(_$_MoviesDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'body': instance.body,
      'body1': instance.body1,
      'color': instance.color,
      'serverTimeStamp': _$JsonConverterToJson<Object, FieldValue>(
          instance.serverTimeStamp, const ServerTimeStampConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
