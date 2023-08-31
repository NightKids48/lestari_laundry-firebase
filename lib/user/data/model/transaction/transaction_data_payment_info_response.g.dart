// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_payment_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataPaymentInfoResponse _$TransactionDataPaymentInfoResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionDataPaymentInfoResponse(
      json['id'] as int?,
      json['paymentStatus'] as String?,
      json['totalPrice'] as String?,
    );

Map<String, dynamic> _$TransactionDataPaymentInfoResponseToJson(
        TransactionDataPaymentInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentStatus': instance.paymentStatus,
      'totalPrice': instance.totalPrice,
    };
