// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_payment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserPaymentInfo _$TransactionUserPaymentInfoFromJson(
        Map<String, dynamic> json) =>
    TransactionUserPaymentInfo(
      json['paymentProvider'] as int,
      json['paymentStatus'] as String,
      json['totalPrice'] as String,
    );

Map<String, dynamic> _$TransactionUserPaymentInfoToJson(
        TransactionUserPaymentInfo instance) =>
    <String, dynamic>{
      'paymentProvider': instance.paymentProvider,
      'paymentStatus': instance.paymentStatus,
      'totalPrice': instance.totalPrice,
    };
