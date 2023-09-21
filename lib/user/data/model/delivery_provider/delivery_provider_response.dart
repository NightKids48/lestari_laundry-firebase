import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/delivery_provider/delivery_data_response.dart';
import 'package:lestari_laundry/user/data/model/delivery_provider/delivery_meta_data_response.dart';
import 'package:lestari_laundry/user/domain/model/data/delivery_provider/delivery_data.dart';

part 'delivery_provider_response.g.dart';

abstract class DeliveryProviderResponseMapper {
  List<DeliveryData> toDeliveryData();
}

@JsonSerializable()
class DeliveryProviderResponse implements DeliveryProviderResponseMapper {
  List<DeliveryDataResponse>? data;
  DeliveryMetaDataResponse? meta;
  DeliveryProviderResponse({
    this.data,
    this.meta,
  });

  factory DeliveryProviderResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryProviderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryProviderResponseToJson(this);

  @override
  List<DeliveryData> toDeliveryData() {
    return data?.map((e) => e.toDeliveryData()).toList() ?? List.empty();
  }
}
