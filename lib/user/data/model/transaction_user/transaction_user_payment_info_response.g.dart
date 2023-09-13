// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_payment_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserPaymentInfoResponse _$TransactionUserPaymentInfoResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionUserPaymentInfoResponse(
      json['id'] as int?,
      json['paymentStatus'] as String?,
      json['totalPrice'] as String?,
    );

Map<String, dynamic> _$TransactionUserPaymentInfoResponseToJson(
        TransactionUserPaymentInfoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'paymentStatus': instance.paymentStatus,
      'totalPrice': instance.totalPrice,
    };
