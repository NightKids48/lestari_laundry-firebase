import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/data/model/satuan_product/product_image_piece_data_response.dart';
import 'package:lestari_laundry/domain/model/data/satuan_product/product_image_piece_attributes.dart';
import '../../../domain/model/data/satuan_product/product_image_piece.dart';
import '../../../domain/model/data/satuan_product/product_image_piece_data.dart';
part 'product_image_piece_response.g.dart';

abstract class ProductImagePieceResponseMapper {
  ProductImagePiece toProductImagePiece();
}

@JsonSerializable()
class ProductImagePieceResponse implements ProductImagePieceResponseMapper {
  ProductImagePieceDataResponse? data;

  ProductImagePieceResponse({
    this.data,
  });

  factory ProductImagePieceResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductImagePieceResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductImagePieceResponseToJson(this);

  @override
  ProductImagePiece toProductImagePiece() {
    return ProductImagePiece(
      data?.toProductImagePieceData() ??
          ProductImagePieceData(
            0,
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
          ),
    );
  }
}
