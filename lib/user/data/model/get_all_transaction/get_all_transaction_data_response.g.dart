// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTransactionDataResponse _$GetAllTransactionDataResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllTransactionDataResponse(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : GetAllTransactionDataAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllTransactionDataResponseToJson(
        GetAllTransactionDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
