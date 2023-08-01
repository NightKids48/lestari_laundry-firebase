// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataResponse _$TransactionDataResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionDataResponse(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : TransactionDataAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionDataResponseToJson(
        TransactionDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
