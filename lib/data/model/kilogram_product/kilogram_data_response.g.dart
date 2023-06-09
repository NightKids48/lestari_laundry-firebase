// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kilogram_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KilogramDataResponse _$KilogramDataResponseFromJson(
        Map<String, dynamic> json) =>
    KilogramDataResponse(
      id: json['id'] as int?,
      attribute: json['attribute'] == null
          ? null
          : KilogramDataAttributeResponse.fromJson(
              json['attribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KilogramDataResponseToJson(
        KilogramDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attribute': instance.attribute,
    };
