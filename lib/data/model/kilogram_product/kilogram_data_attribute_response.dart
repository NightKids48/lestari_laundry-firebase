import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/data/model/kilogram_product/product_image_data_response.dart';
import '../../../domain/model/data/kilogram_product.dart/kilogram_data_attribute.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_attribute.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_data.dart';
part 'kilogram_data_attribute_response.g.dart';

abstract class KilogramDataAttributeResponseMapper {
  KilogramDataAttribute toKilogramDataAttribute();
}

@JsonSerializable()
class KilogramDataAttributeResponse
    implements KilogramDataAttributeResponseMapper {
  String? productName;
  String? productType;
  String? productDescription;
  String? productPrice;
  String? minimumOrder;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  List? productVariant;
  ProductImageDataResponse? productImage;

  KilogramDataAttributeResponse({
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

  factory KilogramDataAttributeResponse.fromJson(Map<String, dynamic> json) =>
      _$KilogramDataAttributeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KilogramDataAttributeResponseToJson(this);

  @override
  KilogramDataAttribute toKilogramDataAttribute() {
    return KilogramDataAttribute(
      productName ?? '',
      productType ?? '',
      productDescription ?? '',
      productPrice ?? '',
      minimumOrder ?? '',
      createdAt ?? '',
      updatedAt ?? '',
      publishedAt ?? '',
      productVariant ?? [],
      productImage?.toProductImageData() ??
          ProductImageData(
            0,
            ProductImageAttribute(
              '',
              '',
              '',
              0,
              0,
              '',
              '',
              '',
              '',
              0,
              '',
              '',
              '',
              '',
              '',
              '',
            ),
          ),
    );
  }
}
