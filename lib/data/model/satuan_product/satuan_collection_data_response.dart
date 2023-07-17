import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/data/model/satuan_product/product_piece_meta_data_response.dart';
import 'package:lestari_laundry/data/model/satuan_product/satuan_data_response.dart';
import '../../../domain/model/data/satuan_product/satuan_data.dart';
part 'satuan_collection_data_response.g.dart';

abstract class SatuanCollectionDataResponseMapper {
  List<SatuanData> toSatuanData();
}

@JsonSerializable()
class SatuanCollectionDataResponse
    implements SatuanCollectionDataResponseMapper {
  List<SatuanDataResponse>? data;
  ProductPieceMetaDataResponse? meta;

  SatuanCollectionDataResponse({this.data, this.meta});

  factory SatuanCollectionDataResponse.fromJson(Map<String, dynamic> json) =>
      _$SatuanCollectionDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SatuanCollectionDataResponseToJson(this);

  @override
  List<SatuanData> toSatuanData() {
    return data?.map((e) => e.toSatuanData()).toList() ?? List.empty();
  }
}
