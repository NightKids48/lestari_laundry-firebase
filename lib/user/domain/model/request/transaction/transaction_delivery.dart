import 'package:json_annotation/json_annotation.dart';

part 'transaction_delivery.g.dart';

@JsonSerializable()
class TransactionsDelivery {
  List<int> deliveryProvider;
  String userDistance;
  TransactionsDelivery(
    this.deliveryProvider,
    this.userDistance,
  );
  factory TransactionsDelivery.fromJson(Map<String, dynamic> json) =>
      _$TransactionsDeliveryFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionsDeliveryToJson(this);
  }
}
