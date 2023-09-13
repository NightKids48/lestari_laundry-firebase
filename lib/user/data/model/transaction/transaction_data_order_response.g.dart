// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataOrderResponse _$TransactionDataOrderResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionDataOrderResponse(
      json['id'] as int?,
      json['amount'] as String?,
      json['totalOrderCost'] as String?,
    );

Map<String, dynamic> _$TransactionDataOrderResponseToJson(
        TransactionDataOrderResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
      'totalOrderCost': instance.totalOrderCost,
    };
