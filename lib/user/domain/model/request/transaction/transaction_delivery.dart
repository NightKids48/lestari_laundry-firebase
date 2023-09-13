import 'package:json_annotation/json_annotation.dart';

part 'transaction_delivery.g.dart';

@JsonSerializable()
class TransactionsDelivery {
  int deliveryProvider;
  String userDistance;
  String totalDeliverCost;
  TransactionsDelivery(
    this.deliveryProvider,
    this.userDistance,
    this.totalDeliverCost,
  );
  factory TransactionsDelivery.fromJson(Map<String, dynamic> json) =>
      _$TransactionsDeliveryFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionsDeliveryToJson(this);
  }
}
