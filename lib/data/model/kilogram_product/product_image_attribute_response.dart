// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/domain/model/data/kilogram_product.dart/product_image_attribute.dart';
part 'product_image_attribute_response.g.dart';

abstract class ProductImageAttributeResponseMapper {
  ProductImageAttribute toProductImageAttribute();
}

@JsonSerializable()
class ProductImageAttributeResponse
    implements ProductImageAttributeResponseMapper {
  String? name;
  String? alternativeText;
  String? caption;
  int? width;
  int? height;
  String? formats;
  String? hash;
  String? ext;
  String? mime;
  double? size;
  String? url;
  String? previewUrl;
  String? provider;
  String? provider_metadata;
  String? createdAt;
  String? updatedAt;
  ProductImageAttributeResponse({
    this.name,
    this.alternativeText,
    this.caption,
    this.width,
    this.height,
    this.formats,
    this.hash,
    this.ext,
    this.mime,
    this.size,
    this.url,
    this.previewUrl,
    this.provider,
    this.provider_metadata,
    this.createdAt,
    this.updatedAt,
  });

  factory ProductImageAttributeResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageAttributeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageAttributeResponseToJson(this);

  @override
  ProductImageAttribute toProductImageAttribute() {
    return ProductImageAttribute(
      name ?? '',
      alternativeText ?? '',
      caption ?? '',
      width ?? 0,
      height ?? 0,
      formats ?? '',
      hash ?? '',
      ext ?? '',
      mime ?? '',
      size ?? 0,
      url ?? '',
      previewUrl ?? '',
      provider ?? '',
      provider_metadata ?? '',
      createdAt ?? '',
      updatedAt ?? '',
    );
  }
}
