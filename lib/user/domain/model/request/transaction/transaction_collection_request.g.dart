// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_collection_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionCollectionRequest _$TransactionCollectionRequestFromJson(
        Map<String, dynamic> json) =>
    TransactionCollectionRequest(
      TransactionDataRequest.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionCollectionRequestToJson(
        TransactionCollectionRequest instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
