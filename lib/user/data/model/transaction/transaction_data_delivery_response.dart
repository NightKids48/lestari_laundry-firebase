import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_delivery.dart';

part 'transaction_data_delivery_response.g.dart';

abstract class TransactionDataDeliveryResponseMapper {
  TransactionDelivery toTransactionDelivery();
}

@JsonSerializable()
class TransactionDataDeliveryResponse
    implements TransactionDataDeliveryResponseMapper {
  int? id;
  String? userDistance;
  String? totalDeliverCost;
  TransactionDataDeliveryResponse(
    this.id,
    this.userDistance,
    this.totalDeliverCost,
  );

  factory TransactionDataDeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataDeliveryResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TransactionDataDeliveryResponseToJson(this);

  @override
  TransactionDelivery toTransactionDelivery() {
    return TransactionDelivery(
      id ?? 0,
      userDistance ?? '',
      totalDeliverCost ?? '',
    );
  }
}
