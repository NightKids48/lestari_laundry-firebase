// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_payment_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTransactionPaymentInfoResponse
    _$GetAllTransactionPaymentInfoResponseFromJson(Map<String, dynamic> json) =>
        GetAllTransactionPaymentInfoResponse(
          json['id'] as int?,
          json['paymentStatus'] as String?,
          json['totalPrice'] as String?,
        );

Map<String, dynamic> _$GetAllTransactionPaymentInfoResponseToJson(
        GetAllTransactionPaymentInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentStatus': instance.paymentStatus,
      'totalPrice': instance.totalPrice,
    };
