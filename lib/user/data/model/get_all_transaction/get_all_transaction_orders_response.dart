import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_data_orders.dart';

part 'get_all_transaction_orders_response.g.dart';

abstract class GetAllTransactionOrdersResponseMapper {
  GetAllTransactionDataOrders toGetAllTransactionDataOrders();
}

@JsonSerializable()
class GetAllTransactionOrdersResponse
    implements GetAllTransactionOrdersResponseMapper {
  int? id;
  String? amount;
  GetAllTransactionOrdersResponse(
    this.id,
    this.amount,
  );

  factory GetAllTransactionOrdersResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllTransactionOrdersResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllTransactionOrdersResponseToJson(this);

  @override
  GetAllTransactionDataOrders toGetAllTransactionDataOrders() {
    return GetAllTransactionDataOrders(
      id ?? 0,
      amount ?? '',
    );
  }
}
