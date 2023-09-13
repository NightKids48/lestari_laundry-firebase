// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserResponse _$TransactionUserResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionUserResponse(
      json['data'] == null
          ? null
          : TransactionUserDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TransactionUserResponseToJson(
        TransactionUserResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
