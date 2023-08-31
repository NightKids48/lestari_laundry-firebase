// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTransactionUserResponse _$GetAllTransactionUserResponseFromJson(
        Map<String, dynamic> json) =>
    GetAllTransactionUserResponse(
      data: json['data'] == null
          ? null
          : GetAllTransactionUserDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllTransactionUserResponseToJson(
        GetAllTransactionUserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
