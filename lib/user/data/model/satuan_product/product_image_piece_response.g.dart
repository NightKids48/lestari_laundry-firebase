// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_piece_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImagePieceResponse _$ProductImagePieceResponseFromJson(
        Map<String, dynamic> json) =>
    ProductImagePieceResponse(
      data: json['data'] == null
          ? null
          : ProductImagePieceDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProductImagePieceResponseToJson(
        ProductImagePieceResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
