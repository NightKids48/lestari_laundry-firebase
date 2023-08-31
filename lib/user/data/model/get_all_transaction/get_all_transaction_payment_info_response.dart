import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_payment_info.dart';

part 'get_all_transaction_payment_info_response.g.dart';

abstract class GetAllTransactionPaymentInfoResponseMapper {
  GetAllTransactionPaymentInfo toGetAllTransactionPaymentInfo();
}

@JsonSerializable()
class GetAllTransactionPaymentInfoResponse
    implements GetAllTransactionPaymentInfoResponseMapper {
  int? id;
  String? paymentStatus;
  String? totalPrice;
  GetAllTransactionPaymentInfoResponse(
    this.id,
    this.paymentStatus,
    this.totalPrice,
  );

  factory GetAllTransactionPaymentInfoResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllTransactionPaymentInfoResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllTransactionPaymentInfoResponseToJson(this);

  @override
  GetAllTransactionPaymentInfo toGetAllTransactionPaymentInfo() {
    return GetAllTransactionPaymentInfo(
      id ?? 0,
      paymentStatus ?? '',
      totalPrice ?? '',
    );
  }
}
