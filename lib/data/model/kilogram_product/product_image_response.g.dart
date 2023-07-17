// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageResponse _$ProductImageResponseFromJson(
        Map<String, dynamic> json) =>
    ProductImageResponse(
      data: json['data'] == null
          ? null
          : ProductImageDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductImageResponseToJson(
        ProductImageResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
