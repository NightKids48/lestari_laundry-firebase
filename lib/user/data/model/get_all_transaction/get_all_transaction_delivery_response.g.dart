// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_delivery_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTransactionDeliveryResponse _$GetAllTransactionDeliveryResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllTransactionDeliveryResponse(
      json['id'] as int?,
      json['userDistance'] as String?,
      json['totalDeliverCost'] as String?,
    );

Map<String, dynamic> _$GetAllTransactionDeliveryResponseToJson(
        GetAllTransactionDeliveryResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userDistance': instance.userDistance,
      'totalDeliverCost': instance.totalDeliverCost,
    };
