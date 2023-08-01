import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_delivery.dart';

part 'transaction_data_request.g.dart';

@JsonSerializable()
class TransactionDataRequest {
  String transactionStatus;
  List orders;
  List user;
  TransactionDataRequest(
    this.transactionStatus,
    this.orders,
    this.user,
  );
  factory TransactionDataRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionDataRequestToJson(this);
  }
}
