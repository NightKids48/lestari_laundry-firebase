import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/delivery_provider/delivery_data_attributes_response.dart';
import 'package:lestari_laundry/user/domain/model/data/delivery_provider/delivery_data_attributes.dart';
import '../../../domain/model/data/delivery_provider/delivery_data.dart';

part 'delivery_data_response.g.dart';

abstract class DeliveryDataResponseMapper {
  DeliveryData toDeliveryData();
}

@JsonSerializable()
class DeliveryDataResponse implements DeliveryDataResponseMapper {
  int? id;
  DeliveryDataAttributesResponse? attributes;

  DeliveryDataResponse({
    this.id,
    this.attributes,
  });

  factory DeliveryDataResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryDataResponseToJson(this);

  @override
  DeliveryData toDeliveryData() {
    return DeliveryData(
      id ?? 0,
      attributes?.toDeliveryDataAttributes() ??
          DeliveryDataAttributes(
            '',
            0,
            '',
            '',
            '',
            '',
          ),
    );
  }
}
