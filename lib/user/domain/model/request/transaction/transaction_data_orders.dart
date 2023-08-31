import 'package:json_annotation/json_annotation.dart';

part 'transaction_data_orders.g.dart';

@JsonSerializable()
class TransactionDataOrders {
  int id;
  String amount;
  TransactionDataOrders(
    this.id,
    this.amount,
  );

  factory TransactionDataOrders.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataOrdersFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionDataOrdersToJson(this);
  }
}
