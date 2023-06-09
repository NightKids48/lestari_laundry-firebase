// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kilogram_data_attribute_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KilogramDataAttributeResponse _$KilogramDataAttributeResponseFromJson(
        Map<String, dynamic> json) =>
    KilogramDataAttributeResponse(
      productName: json['productName'] as String?,
      productType: json['productType'] as String?,
      productDescription: json['productDescription'] as String?,
      productPrice: json['productPrice'] as String?,
      minimumOrder: json['minimumOrder'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      publishedAt: json['publishedAt'] as String?,
      productVariant: json['productVariant'] as List<dynamic>?,
      productImage: json['productImage'] == null
          ? null
          : ProductImageDataResponse.fromJson(
              json['productImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KilogramDataAttributeResponseToJson(
        KilogramDataAttributeResponse instance) =>
    <String, dynamic>{
      'productName': instance.productName,
      'productType': instance.productType,
      'productDescription': instance.productDescription,
      'productPrice': instance.productPrice,
      'minimumOrder': instance.minimumOrder,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
      'productVariant': instance.productVariant,
      'productImage': instance.productImage,
    };
