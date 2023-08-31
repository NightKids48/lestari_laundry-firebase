import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/kilogram_product/product_image_data_response.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_attribute.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_data.dart';
part 'product_image_response.g.dart';

abstract class ProductImageResponseMapper {
  ProductImage toProductImage();
}

@JsonSerializable()
class ProductImageResponse implements ProductImageResponseMapper {
  ProductImageDataResponse? data;

  ProductImageResponse({
    this.data,
  });

  factory ProductImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImageResponseToJson(this);

  @override
  ProductImage toProductImage() {
    return ProductImage(
      data?.toProductImageData() ??
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
