// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_delivery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataDeliveryResponse _$TransactionDataDeliveryResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionDataDeliveryResponse(
      json['id'] as int?,
      json['userDistance'] as String?,
      json['totalDeliverCost'] as String?,
    );

Map<String, dynamic> _$TransactionDataDeliveryResponseToJson(
        TransactionDataDeliveryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userDistance': instance.userDistance,
      'totalDeliverCost': instance.totalDeliverCost,
    };
