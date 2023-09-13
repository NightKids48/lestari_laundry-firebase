// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserData _$TransactionUserDataFromJson(Map<String, dynamic> json) =>
    TransactionUserData(
      json['transactionStatus'] as String,
      (json['orders'] as List<dynamic>)
          .map((e) => TransactionUserOrders.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['user'] as List<dynamic>).map((e) => e as int).toList(),
      TransactionUserDelivery.fromJson(
          json['delivery'] as Map<String, dynamic>),
      TransactionUserPaymentInfo.fromJson(
          json['paymentInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionUserDataToJson(
        TransactionUserData instance) =>
    <String, dynamic>{
      'transactionStatus': instance.transactionStatus,
      'orders': instance.orders,
      'user': instance.user,
      'delivery': instance.delivery,
      'paymentInfo': instance.paymentInfo,
    };
