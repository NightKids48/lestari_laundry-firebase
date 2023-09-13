import 'package:json_annotation/json_annotation.dart';

part 'transaction_user_delivery.g.dart';

@JsonSerializable()
class TransactionUserDelivery {
  int deliveryProvider;
  String userDistance;

  TransactionUserDelivery(
    this.deliveryProvider,
    this.userDistance,
  );
  factory TransactionUserDelivery.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserDeliveryFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionUserDeliveryToJson(this);
  }
}
