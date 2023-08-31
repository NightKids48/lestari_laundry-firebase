// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_piece_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImagePieceDataResponse _$ProductImagePieceDataResponseFromJson(
        Map<String, dynamic> json) =>
    ProductImagePieceDataResponse(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : ProductImagePieceAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductImagePieceDataResponseToJson(
        ProductImagePieceDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
