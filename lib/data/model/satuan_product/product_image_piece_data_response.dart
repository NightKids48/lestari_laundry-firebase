import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/data/model/satuan_product/product_image_piece_attributes_response.dart';
import '../../../domain/model/data/satuan_product/product_image_piece_attributes.dart';
import '../../../domain/model/data/satuan_product/product_image_piece_data.dart';
part 'product_image_piece_data_response.g.dart';

abstract class ProductImagePieceDataResponseMapper {
  ProductImagePieceData toProductImagePieceData();
}

@JsonSerializable()
class ProductImagePieceDataResponse
    implements ProductImagePieceDataResponseMapper {
  int? id;
  ProductImagePieceAttributesResponse? attributes;

  ProductImagePieceDataResponse({
    this.id,
    this.attributes,
  });

  factory ProductImagePieceDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImagePieceDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImagePieceDataResponseToJson(this);

  @override
  ProductImagePieceData toProductImagePieceData() {
    return ProductImagePieceData(
      id ?? 0,
      attributes?.toProductImagePieceAttributes() ??
          ProductImagePieceAttributes(
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
