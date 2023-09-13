import 'package:json_annotation/json_annotation.dart';

part 'transaction_user_orders.g.dart';

@JsonSerializable()
class TransactionUserOrders {
  int id;
  String amount;
  TransactionUserOrders(
    this.id,
    this.amount,
  );

  factory TransactionUserOrders.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserOrdersFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionUserOrdersToJson(this);
  }
}
