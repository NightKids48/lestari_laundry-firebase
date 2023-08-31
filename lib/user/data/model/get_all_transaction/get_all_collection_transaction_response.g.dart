// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_collection_transaction_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCollectionTransactionResponse
    _$GetAllCollectionTransactionResponseFromJson(Map<String, dynamic> json) =>
        GetAllCollectionTransactionResponse(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => GetAllTransactionDataResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          meta: json['meta'] == null
              ? null
              : ProductMetaDataResponse.fromJson(
                  json['meta'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$GetAllCollectionTransactionResponseToJson(
        GetAllCollectionTransactionResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
