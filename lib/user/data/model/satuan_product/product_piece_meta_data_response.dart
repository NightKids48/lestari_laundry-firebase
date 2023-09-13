import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/satuan_product/product_piece_meta_data.dart';
part 'product_piece_meta_data_response.g.dart';

abstract class ProductPieceMetaDataResponseMapper {
  ProductPieceMetaData toProductPieceMetaData();
}

@JsonSerializable()
class ProductPieceMetaDataResponse
    implements ProductPieceMetaDataResponseMapper {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;
  ProductPieceMetaDataResponse(
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  );

  factory ProductPieceMetaDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductPieceMetaDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductPieceMetaDataResponseToJson(this);

  @override
  ProductPieceMetaData toProductPieceMetaData() {
    return ProductPieceMetaData(
      page ?? 0,
      pageSize ?? 0,
      pageCount ?? 0,
      total ?? 0,
    );
  }
}
