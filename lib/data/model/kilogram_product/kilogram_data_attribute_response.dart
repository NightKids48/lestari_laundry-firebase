import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/data/model/kilogram_product/product_image_response.dart';
import 'package:lestari_laundry/domain/model/data/kilogram_product.dart/product_image.dart';
import '../../../domain/model/data/kilogram_product.dart/kilogram_data_attributes.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_attribute.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_data.dart';
part 'kilogram_data_attribute_response.g.dart';

abstract class KilogramDataAttributesResponseMapper {
  KilogramDataAttributes toKilogramDataAttributes();
}

@JsonSerializable()
class KilogramDataAttributesResponse
    implements KilogramDataAttributesResponseMapper {
  String? productName;
  String? productType;
  String? productDescription;
  String? productPrice;
  String? minimumOrder;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  List? productVariant;
  ProductImageResponse? productImage;

  KilogramDataAttributesResponse({
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

  factory KilogramDataAttributesResponse.fromJson(Map<String, dynamic> json) =>
      _$KilogramDataAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KilogramDataAttributesResponseToJson(this);

  @override
  KilogramDataAttributes toKilogramDataAttributes() {
    return KilogramDataAttributes(
      productName ?? '',
      productType ?? '',
      productDescription ?? '',
      productPrice ?? '',
      minimumOrder ?? '',
      createdAt ?? '',
      updatedAt ?? '',
      publishedAt ?? '',
      productVariant ?? [],
      productImage?.toProductImage() ??
          ProductImage(
            ProductImageData(
              0,
              ProductImageAttribute(
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
