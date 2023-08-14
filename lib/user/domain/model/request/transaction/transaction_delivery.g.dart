// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionsDelivery _$TransactionsDeliveryFromJson(
        Map<String, dynamic> json) =>
    TransactionsDelivery(
      (json['deliveryProvider'] as List<dynamic>).map((e) => e as int).toList(),
      json['userDistance'] as String,
    );

Map<String, dynamic> _$TransactionsDeliveryToJson(
        TransactionsDelivery instance) =>
    <String, dynamic>{
      'deliveryProvider': instance.deliveryProvider,
      'userDistance': instance.userDistance,
    };
