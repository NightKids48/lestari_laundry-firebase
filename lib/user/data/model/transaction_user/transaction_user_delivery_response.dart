import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction_user/transaction_user_delivery.dart';

part 'transaction_user_delivery_response.g.dart';

abstract class TransactionUserDeliveryResponseMapper {
  TransactionUserDelivery toTransactionUserDelivery();
}

@JsonSerializable()
class TransactionUserDeliveryResponse
    implements TransactionUserDeliveryResponseMapper {
  int? id;
  String? userDistance;

  TransactionUserDeliveryResponse(
    this.id,
    this.userDistance,
  );

  factory TransactionUserDeliveryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserDeliveryResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TransactionUserDeliveryResponseToJson(this);

  @override
  TransactionUserDelivery toTransactionUserDelivery() {
    return TransactionUserDelivery(
      id ?? 0,
      userDistance ?? '',
    );
  }
}
