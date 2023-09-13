import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/transaction_user/transaction_user_payment_info.dart';

part 'transaction_user_payment_info_response.g.dart';

abstract class TransactionUserPaymentInfoResponseMapper {
  TransactionUserPaymentInfo toTransactionUserPaymentInfo();
}

@JsonSerializable()
class TransactionUserPaymentInfoResponse
    implements TransactionUserPaymentInfoResponseMapper {
  int? id;
  String? paymentStatus;
  String? totalPrice;
  TransactionUserPaymentInfoResponse(
    this.id,
    this.paymentStatus,
    this.totalPrice,
  );

  factory TransactionUserPaymentInfoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionUserPaymentInfoResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TransactionUserPaymentInfoResponseToJson(this);

  @override
  TransactionUserPaymentInfo toTransactionUserPaymentInfo() {
    return TransactionUserPaymentInfo(
      id ?? 0,
      paymentStatus ?? '',
      totalPrice ?? '',
    );
  }
}
