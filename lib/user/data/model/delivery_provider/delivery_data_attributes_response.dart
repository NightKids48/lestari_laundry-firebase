import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/delivery_provider/delivery_data_attributes.dart';

part 'delivery_data_attributes_response.g.dart';

abstract class DeliveryDataAttributesResponseMapper {
  DeliveryDataAttributes toDeliveryDataAttributes();
}

@JsonSerializable()
class DeliveryDataAttributesResponse
    implements DeliveryDataAttributesResponseMapper {
  String? deliveryName;
  int? deliveryPrice;
  String? minimumDistanceMeters;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  DeliveryDataAttributesResponse({
    this.deliveryName,
    this.deliveryPrice,
    this.minimumDistanceMeters,
    this.createdAt,
    this.updatedAt,
    this.publishedAt,
  });

  factory DeliveryDataAttributesResponse.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDataAttributesResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DeliveryDataAttributesResponseToJson(this);

  @override
  DeliveryDataAttributes toDeliveryDataAttributes() {
    return DeliveryDataAttributes(
      deliveryName ?? '',
      deliveryPrice ?? 0,
      minimumDistanceMeters ?? '',
      createdAt ?? '',
      updatedAt ?? '',
      publishedAt ?? '',
    );
  }
}
