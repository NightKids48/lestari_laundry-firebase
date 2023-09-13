// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_orders.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserOrders _$TransactionUserOrdersFromJson(
        Map<String, dynamic> json) =>
    TransactionUserOrders(
      json['id'] as int,
      json['amount'] as String,
    );

Map<String, dynamic> _$TransactionUserOrdersToJson(
        TransactionUserOrders instance) =>
    <String, dynamic>{
      'id': instance.id,
      'amount': instance.amount,
    };
