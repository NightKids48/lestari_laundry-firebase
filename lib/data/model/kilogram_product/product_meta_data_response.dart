// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/kilogram_product.dart/product_meta_data.dart';
part 'product_meta_data_response.g.dart';

abstract class ProductMetaDataResponseMapper {
  ProductMetaData toProductMetaData();
}

@JsonSerializable()
class ProductMetaDataResponse implements ProductMetaDataResponseMapper {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;
  ProductMetaDataResponse(
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  );

  factory ProductMetaDataResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductMetaDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProductMetaDataResponseToJson(this);

  @override
  ProductMetaData toProductMetaData() {
    return ProductMetaData(
      page ?? 0,
      pageSize ?? 0,
      pageCount ?? 0,
      total ?? 0,
    );
  }
}
