// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/delivery_provider/delivery_meta_data.dart';
part 'delivery_meta_data_response.g.dart';

abstract class DeliveryMetaDataResponseMapper {
  DeliveryMetaData toDeliveryMetaData();
}

@JsonSerializable()
class DeliveryMetaDataResponse implements DeliveryMetaDataResponseMapper {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;
  DeliveryMetaDataResponse(
    this.page,
    this.pageSize,
    this.pageCount,
    this.total,
  );

  factory DeliveryMetaDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryMetaDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryMetaDataResponseToJson(this);

  @override
  DeliveryMetaData toDeliveryMetaData() {
    return DeliveryMetaData(
      page ?? 0,
      pageSize ?? 0,
      pageCount ?? 0,
      total ?? 0,
    );
  }
}
