// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_transaction_user_attributes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllTransactionUserAttributesResponse
    _$GetAllTransactionUserAttributesResponseFromJson(
            Map<String, dynamic> json) =>
        GetAllTransactionUserAttributesResponse(
          email: json['email'] as String?,
          provider: json['provider'] as String?,
          confirmed: json['confirmed'] as String?,
          blocked: json['blocked'] as String?,
          createdAt: json['createdAt'] as String?,
          updatedAt: json['updatedAt'] as String?,
          username: json['username'] as String?,
          phoneNumber: json['phoneNumber'] as String?,
          fullname: json['fullname'] as String?,
          userRole: json['userRole'] as String?,
        );

Map<String, dynamic> _$GetAllTransactionUserAttributesResponseToJson(
        GetAllTransactionUserAttributesResponse instance) =>
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
