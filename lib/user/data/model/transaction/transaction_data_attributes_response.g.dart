// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_attributes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataAttributesResponse _$TransactionDataAttributesResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionDataAttributesResponse(
      json['transactionStatus'] as String?,
      json['createdAt'] as String?,
      json['updateAt'] as String?,
      json['publishedAt'] as String?,
      json['specialNotes'] as String?,
      json['orders'] as List<dynamic>?,
    );

Map<String, dynamic> _$TransactionDataAttributesResponseToJson(
        TransactionDataAttributesResponse instance) =>
    <String, dynamic>{
      'transactionStatus': instance.transactionStatus,
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'publishedAt': instance.publishedAt,
      'specialNotes': instance.specialNotes,
      'orders': instance.orders,
    };
