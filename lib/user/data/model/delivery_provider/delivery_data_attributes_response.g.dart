// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_data_attributes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryDataAttributesResponse _$DeliveryDataAttributesResponseFromJson(
        Map<String, dynamic> json) =>
    DeliveryDataAttributesResponse(
      deliveryName: json['deliveryName'] as String?,
      deliveryPrice: json['deliveryPrice'] as int?,
      minimumDistanceMeters: json['minimumDistanceMeters'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      publishedAt: json['publishedAt'] as String?,
    );

Map<String, dynamic> _$DeliveryDataAttributesResponseToJson(
        DeliveryDataAttributesResponse instance) =>
    <String, dynamic>{
      'deliveryName': instance.deliveryName,
      'deliveryPrice': instance.deliveryPrice,
      'minimumDistanceMeters': instance.minimumDistanceMeters,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
    };
