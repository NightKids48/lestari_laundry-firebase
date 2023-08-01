// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kilogram_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KilogramDataResponse _$KilogramDataResponseFromJson(
        Map<String, dynamic> json) =>
    KilogramDataResponse(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : KilogramDataAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KilogramDataResponseToJson(
        KilogramDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
