// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_provider_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryProviderResponse _$DeliveryProviderResponseFromJson(
        Map<String, dynamic> json) =>
    DeliveryProviderResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DeliveryDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : DeliveryMetaDataResponse.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DeliveryProviderResponseToJson(
        DeliveryProviderResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
