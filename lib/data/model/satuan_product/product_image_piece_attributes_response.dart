import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/domain/model/data/satuan_product/product_image_piece_attributes.dart';
part 'product_image_piece_attributes_response.g.dart';

abstract class ProductImagePieceAttributesResponseMapper {
  ProductImagePieceAttributes toProductImagePieceAttributes();
}

@JsonSerializable()
class ProductImagePieceAttributesResponse
    implements ProductImagePieceAttributesResponseMapper {
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
  ProductImagePieceAttributesResponse({
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

  factory ProductImagePieceAttributesResponse.fromJson(
          Map<String, dynamic> json) =>
      _$ProductImagePieceAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$ProductImagePieceAttributesResponseToJson(this);

  @override
  ProductImagePieceAttributes toProductImagePieceAttributes() {
    return ProductImagePieceAttributes(
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
