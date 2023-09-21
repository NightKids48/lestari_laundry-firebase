// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryDataResponse _$DeliveryDataResponseFromJson(
        Map<String, dynamic> json) =>
    DeliveryDataResponse(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : DeliveryDataAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeliveryDataResponseToJson(
        DeliveryDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
