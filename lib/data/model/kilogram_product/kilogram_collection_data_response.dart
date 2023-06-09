import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/kilogram_product.dart/kilogram_data.dart';
import 'kilogram_data_response.dart';
import 'product_meta_data_response.dart';
part 'kilogram_collection_data_response.g.dart';

abstract class KilogramCollectionDataResponseMapper {
  List<KilogramData> toKilogramData();
}

@JsonSerializable()
class KilogramCollectionDataResponse
    implements KilogramCollectionDataResponseMapper {
  List<KilogramDataResponse>? data;
  ProductMetaDataResponse? meta;

  KilogramCollectionDataResponse({this.data, this.meta});

  factory KilogramCollectionDataResponse.fromJson(Map<String, dynamic> json) =>
      _$KilogramCollectionDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$KilogramCollectionDataResponseToJson(this);

  @override
  List<KilogramData> toKilogramData() {
    return data?.map((e) => e.toKilogramData()).toList() ?? List.empty();
  }
}
