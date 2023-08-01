// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_payment_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataPaymentInfo _$TransactionDataPaymentInfoFromJson(
        Map<String, dynamic> json) =>
    TransactionDataPaymentInfo(
      json['paymentProvider'] as int,
      json['paymentStatus'] as String,
      json['totalPrice'] as String,
    );

Map<String, dynamic> _$TransactionDataPaymentInfoToJson(
        TransactionDataPaymentInfo instance) =>
    <String, dynamic>{
      'paymentProvider': instance.paymentProvider,
      'paymentStatus': instance.paymentStatus,
      'totalPrice': instance.totalPrice,
    };
