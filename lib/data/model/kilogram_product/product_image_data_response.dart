import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/data/model/kilogram_product/product_image_attribute_response.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_attribute.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_data.dart';
part 'product_image_data_response.g.dart';

abstract class ProductImageDataResponseMapper {
  ProductImageData toProductImageData();
}

@JsonSerializable()
class ProductImageDataResponse implements ProductImageDataResponseMapper {
  int? id;
  ProductImageAttributeResponse? attributes;

  ProductImageDataResponse({
    this.id,
    this.attributes,
  });

  factory ProductImageDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageDataResponseToJson(this);

  @override
  ProductImageData toProductImageData() {
    return ProductImageData(
      id ?? 0,
      attributes?.toProductImageAttribute() ??
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
    );
  }
}
