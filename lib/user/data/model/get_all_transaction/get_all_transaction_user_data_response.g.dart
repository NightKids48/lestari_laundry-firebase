// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_user_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTransactionUserDataResponse _$GetAllTransactionUserDataResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllTransactionUserDataResponse(
      id: json['id'] as int?,
      attributes: json['attributes'] == null
          ? null
          : GetAllTransactionUserAttributesResponse.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllTransactionUserDataResponseToJson(
        GetAllTransactionUserDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
