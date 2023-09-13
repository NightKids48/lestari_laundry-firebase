// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_delivery.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserDelivery _$TransactionUserDeliveryFromJson(
        Map<String, dynamic> json) =>
    TransactionUserDelivery(
      json['deliveryProvider'] as int,
      json['userDistance'] as String,
    );

Map<String, dynamic> _$TransactionUserDeliveryToJson(
        TransactionUserDelivery instance) =>
    <String, dynamic>{
      'deliveryProvider': instance.deliveryProvider,
      'userDistance': instance.userDistance,
    };
