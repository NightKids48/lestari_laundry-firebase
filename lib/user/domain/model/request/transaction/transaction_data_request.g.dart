// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataRequest _$TransactionDataRequestFromJson(
        Map<String, dynamic> json) =>
    TransactionDataRequest(
      json['transactionStatus'] as String,
      (json['orders'] as List<dynamic>)
          .map((e) => TransactionDataOrders.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['user'] as List<dynamic>)
          .map((e) => TransactionDataUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      TransactionsDelivery.fromJson(json['delivery'] as Map<String, dynamic>),
      TransactionDataPaymentInfo.fromJson(
          json['paymentInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionDataRequestToJson(
        TransactionDataRequest instance) =>
    <String, dynamic>{
      'transactionStatus': instance.transactionStatus,
      'orders': instance.orders,
      'user': instance.user,
      'delivery': instance.delivery,
      'paymentInfo': instance.paymentInfo,
    };
