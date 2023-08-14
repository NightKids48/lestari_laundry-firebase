// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionRequest _$TransactionRequestFromJson(Map<String, dynamic> json) =>
    TransactionRequest(
      TransactionDataRequest.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionRequestToJson(TransactionRequest instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

TransactionDataRequest _$TransactionDataRequestFromJson(
        Map<String, dynamic> json) =>
    TransactionDataRequest(
      json['transactionStatus'] as String,
      (json['orders'] as List<dynamic>)
          .map((e) => Orders.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['user'] as List<dynamic>).map((e) => e as int).toList(),
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

Orders _$OrdersFromJson(Map<String, dynamic> json) => Orders(
      json['id'] as int,
      json['amount'] as String,
    );

Map<String, dynamic> _$OrdersToJson(Orders instance) => <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
    };
