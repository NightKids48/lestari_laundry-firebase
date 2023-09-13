import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_data_orders.dart';
part 'transaction_data_order_response.g.dart';

abstract class TransactionDataOrderResponseMapper {
  TransactionDataOrder toTransactionDataOrder();
}

@JsonSerializable()
class TransactionDataOrderResponse
    implements TransactionDataOrderResponseMapper {
  int? id;
  String? amount;
  String? totalOrderCost;
  TransactionDataOrderResponse(
    this.id,
    this.amount,
    this.totalOrderCost,
  );

  factory TransactionDataOrderResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataOrderResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDataOrderResponseToJson(this);

  @override
  TransactionDataOrder toTransactionDataOrder() {
    return TransactionDataOrder(
      id ?? 0,
      amount ?? '',
      totalOrderCost ?? '',
    );
  }
}
