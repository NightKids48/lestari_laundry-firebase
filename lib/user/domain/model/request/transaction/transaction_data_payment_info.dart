// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
part 'transaction_data_payment_info.g.dart';

@JsonSerializable()
class TransactionDataPaymentInfo {
  int paymentProvider;
  String paymentStatus;
  String totalPrice;
  TransactionDataPaymentInfo(
    this.paymentProvider,
    this.paymentStatus,
    this.totalPrice,
  );
  factory TransactionDataPaymentInfo.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataPaymentInfoFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionDataPaymentInfoToJson(this);
  }
}
