// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserDataResponse _$TransactionUserDataResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionUserDataResponse(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : TransactionUserAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionUserDataResponseToJson(
        TransactionUserDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
