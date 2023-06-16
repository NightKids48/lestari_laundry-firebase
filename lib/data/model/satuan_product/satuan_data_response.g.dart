// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satuan_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SatuanDataResponse _$SatuanDataResponseFromJson(Map<String, dynamic> json) =>
    SatuanDataResponse(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : SatuanDataAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SatuanDataResponseToJson(SatuanDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
