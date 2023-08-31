import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/kilogram_product.dart/kilogram_data.dart';
import '../../../domain/model/data/kilogram_product.dart/kilogram_data_attributes.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_attribute.dart';
import '../../../domain/model/data/kilogram_product.dart/product_image_data.dart';
import 'kilogram_data_attribute_response.dart';
part 'kilogram_data_response.g.dart';

abstract class KilogramDataResponseMapper {
  KilogramData toKilogramData();
}

@JsonSerializable()
class KilogramDataResponse implements KilogramDataResponseMapper {
  int? id;
  KilogramDataAttributesResponse? attributes;

  KilogramDataResponse({
    this.id,
    this.attributes,
  });

  factory KilogramDataResponse.fromJson(Map<String, dynamic> json) =>
      _$KilogramDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KilogramDataResponseToJson(this);

  @override
  KilogramData toKilogramData() {
    return KilogramData(
      id ?? 0,
      attributes?.toKilogramDataAttributes() ??
          KilogramDataAttributes(
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            [],
            ProductImage(
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
            ),
          ),
    );
  }
}
