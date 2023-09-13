import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/request/user_transaction/transaction_user_delivery.dart';
import 'package:lestari_laundry/user/domain/model/request/user_transaction/transaction_user_orders.dart';
import 'transaction_user_payment_info.dart';

part 'transaction_user_data.g.dart';

@JsonSerializable()
class TransactionUserData {
  String transactionStatus;
  List<TransactionUserOrders> orders;
  List<int> user;
  TransactionUserDelivery delivery;
  TransactionUserPaymentInfo paymentInfo;
  TransactionUserData(
    this.transactionStatus,
    this.orders,
    this.user,
    this.delivery,
    this.paymentInfo,
  );
  factory TransactionUserData.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserDataFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionUserDataToJson(this);
  }
}
