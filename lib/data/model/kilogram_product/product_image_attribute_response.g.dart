// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_image_attribute_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductImageAttributeResponse _$ProductImageAttributeResponseFromJson(
        Map<String, dynamic> json) =>
    ProductImageAttributeResponse(
      name: json['name'] as String?,
      alternativeText: json['alternativeText'] as String?,
      caption: json['caption'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      formats: json['formats'] as String?,
      hash: json['hash'] as String?,
      ext: json['ext'] as String?,
      mime: json['mime'] as String?,
      size: (json['size'] as num?)?.toDouble(),
      url: json['url'] as String?,
      previewUrl: json['previewUrl'] as String?,
      provider: json['provider'] as String?,
      provider_metadata: json['provider_metadata'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ProductImageAttributeResponseToJson(
        ProductImageAttributeResponse instance) =>
    <String, dynamic>{
      'name': instance.name,
      'alternativeText': instance.alternativeText,
      'caption': instance.caption,
      'width': instance.width,
      'height': instance.height,
      'formats': instance.formats,
      'hash': instance.hash,
      'ext': instance.ext,
      'mime': instance.mime,
      'size': instance.size,
      'url': instance.url,
      'previewUrl': instance.previewUrl,
      'provider': instance.provider,
      'provider_metadata': instance.provider_metadata,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
