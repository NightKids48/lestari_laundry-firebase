// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataRequest _$TransactionDataRequestFromJson(
        Map<String, dynamic> json) =>
    TransactionDataRequest(
      json['transactionStatus'] as String,
      json['orders'] as List<dynamic>,
      json['user'] as List<dynamic>,
    );

Map<String, dynamic> _$TransactionDataRequestToJson(
        TransactionDataRequest instance) =>
    <String, dynamic>{
      'transactionStatus': instance.transactionStatus,
      'orders': instance.orders,
      'user': instance.user,
    };
