// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_user_attributes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionUserAttributesResponse _$TransactionUserAttributesResponseFromJson(
        Map<String, dynamic> json) =>
    TransactionUserAttributesResponse(
      json['email'] as String?,
      json['provider'] as String?,
      json['confirmed'] as String?,
      json['blocked'] as String?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['username'] as String?,
      json['phoneNumber'] as String?,
      json['fullname'] as String?,
      json['userRole'] as String?,
    );

Map<String, dynamic> _$TransactionUserAttributesResponseToJson(
        TransactionUserAttributesResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'username': instance.username,
      'phoneNumber': instance.phoneNumber,
      'fullname': instance.fullname,
      'userRole': instance.userRole,
    };
