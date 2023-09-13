import 'package:json_annotation/json_annotation.dart';

part 'transaction_user_payment_info.g.dart';

@JsonSerializable()
class TransactionUserPaymentInfo {
  int paymentProvider;
  String paymentStatus;
  String totalPrice;
  TransactionUserPaymentInfo(
    this.paymentProvider,
    this.paymentStatus,
    this.totalPrice,
  );
  factory TransactionUserPaymentInfo.fromJson(Map<String, dynamic> json) =>
      _$TransactionUserPaymentInfoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionUserPaymentInfoToJson(this);
  }
}
