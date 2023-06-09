// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageDataResponse _$ProductImageDataResponseFromJson(
        Map<String, dynamic> json) =>
    ProductImageDataResponse(
      id: json['id'] as int?,
      attribute: json['attribute'] == null
          ? null
          : ProductImageAttributeResponse.fromJson(
              json['attribute'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductImageDataResponseToJson(
        ProductImageDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attribute': instance.attribute,
    };
