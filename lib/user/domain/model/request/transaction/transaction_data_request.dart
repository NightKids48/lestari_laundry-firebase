// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/request/transaction/transaction_data_orders.dart';
import 'package:lestari_laundry/user/domain/model/request/transaction/transaction_data_payment_info.dart';
import 'package:lestari_laundry/user/domain/model/request/transaction/transaction_delivery.dart';

part 'transaction_data_request.g.dart';

@JsonSerializable()
class TransactionDataRequest {
  String transactionStatus;
  List<TransactionDataOrders> orders;
  int user;
  TransactionsDelivery delivery;
  TransactionDataPaymentInfo paymentInfo;
  String specialNotes;
  TransactionDataRequest(
    this.transactionStatus,
    this.orders,
    this.user,
    this.delivery,
    this.paymentInfo,
    this.specialNotes,
  );
  factory TransactionDataRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionDataRequestToJson(this);
  }
}
