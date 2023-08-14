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
      (json['orders'] as List<dynamic>?)
          ?.map((e) =>
              TransactionDataOrderResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['delivery'] == null
          ? null
          : TransactionDataDeliveryResponse.fromJson(
              json['delivery'] as Map<String, dynamic>),
      json['paymentInfo'] == null
          ? null
          : TransactionDataPaymentInfoResponse.fromJson(
              json['paymentInfo'] as Map<String, dynamic>),
      json['user'] == null
          ? null
          : TransactionUserResponse.fromJson(
              json['user'] as Map<String, dynamic>),
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
      'delivery': instance.delivery,
      'paymentInfo': instance.paymentInfo,
      'user': instance.user,
    };
