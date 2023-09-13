import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_payment_info.dart';

part 'transaction_data_payment_info_response.g.dart';

abstract class TransactionDataPaymentInfoResponseMapper {
  TransactionPaymentInfo toTransactionPaymentInfo();
}

@JsonSerializable()
class TransactionDataPaymentInfoResponse
    implements TransactionDataPaymentInfoResponseMapper {
  int? id;
  String? paymentStatus;
  String? totalPrice;
  TransactionDataPaymentInfoResponse(
    this.id,
    this.paymentStatus,
    this.totalPrice,
  );

  factory TransactionDataPaymentInfoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionDataPaymentInfoResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$TransactionDataPaymentInfoResponseToJson(this);

  @override
  TransactionPaymentInfo toTransactionPaymentInfo() {
    return TransactionPaymentInfo(
      id ?? 0,
      paymentStatus ?? '',
      totalPrice ?? '',
    );
  }
}
