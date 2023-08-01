import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/satuan_product/product_image_piece_response.dart';
import '../../../domain/model/data/satuan_product/product_image_piece.dart';
import '../../../domain/model/data/satuan_product/product_image_piece_attributes.dart';
import '../../../domain/model/data/satuan_product/product_image_piece_data.dart';
import '../../../domain/model/data/satuan_product/satuan_data_attributes.dart';
part 'satuan_data_attribute_response.g.dart';

abstract class SatuanDataAttributesResponseMapper {
  SatuanDataAttributes toSatuanDataAttributes();
}

@JsonSerializable()
class SatuanDataAttributesResponse
    implements SatuanDataAttributesResponseMapper {
  String? productName;
  String? productType;
  String? productDescription;
  String? productPrice;
  String? minimumOrder;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  List? productVariant;
  ProductImagePieceResponse? productImage;

  SatuanDataAttributesResponse({
    this.productName,
    this.productType,
    this.productDescription,
    this.productPrice,
    this.minimumOrder,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
    this.productVariant,
    this.productImage,
  });

  factory SatuanDataAttributesResponse.fromJson(Map<String, dynamic> json) =>
      _$SatuanDataAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SatuanDataAttributesResponseToJson(this);

  @override
  SatuanDataAttributes toSatuanDataAttributes() {
    return SatuanDataAttributes(
      productName ?? '',
      productType ?? '',
      productDescription ?? '',
      productPrice ?? '',
      minimumOrder ?? '',
      createdAt ?? '',
      updatedAt ?? '',
      publishedAt ?? '',
      productVariant ?? [],
      productImage?.toProductImagePiece() ??
          ProductImagePiece(
            ProductImagePieceData(
              0,
              ProductImagePieceAttributes(
                "",
                "",
                "",
                0,
                0,
                "",
                "",
                "",
                "",
                0,
                "",
                "",
                "",
                "",
                "",
                "",
              ),
            ),
          ),
    );
  }
}
