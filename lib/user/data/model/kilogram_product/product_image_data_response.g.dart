// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageDataResponse _$ProductImageDataResponseFromJson(
        Map<String, dynamic> json) =>
    ProductImageDataResponse(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : ProductImageAttributeResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductImageDataResponseToJson(
        ProductImageDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
