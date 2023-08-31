// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_data_attributes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTransactionDataAttributesResponse
    _$GetAllTransactionDataAttributesResponseFromJson(
            Map<String, dynamic> json) =>
        GetAllTransactionDataAttributesResponse(
          json['createdAt'] as String?,
          json['updateAt'] as String?,
          json['transactionStatus'] as String?,
          json['publishedAt'] as String?,
          json['specialNotes'] as String?,
          (json['orders'] as List<dynamic>?)
              ?.map((e) => GetAllTransactionOrdersResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          json['delivery'] == null
              ? null
              : GetAllTransactionDeliveryResponse.fromJson(
                  json['delivery'] as Map<String, dynamic>),
          json['paymentInfo'] == null
              ? null
              : GetAllTransactionPaymentInfoResponse.fromJson(
                  json['paymentInfo'] as Map<String, dynamic>),
          json['user'] == null
              ? null
              : GetAllTransactionUserResponse.fromJson(
                  json['user'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GetAllTransactionDataAttributesResponseToJson(
        GetAllTransactionDataAttributesResponse instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updateAt': instance.updateAt,
      'transactionStatus': instance.transactionStatus,
      'publishedAt': instance.publishedAt,
      'specialNotes': instance.specialNotes,
      'orders': instance.orders,
      'delivery': instance.delivery,
      'paymentInfo': instance.paymentInfo,
      'user': instance.user,
    };
