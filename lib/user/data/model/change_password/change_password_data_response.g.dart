// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordDataResponse _$ChangePasswordDataResponseFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordDataResponse(
      id: json['id'] as int?,
      email: json['email'] as String?,
      provider: json['provider'] as String?,
      confirmed: json['confirmed'] as bool?,
      blocked: json['blocked'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      username: json['username'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
    );

Map<String, dynamic> _$ChangePasswordDataResponseToJson(
        ChangePasswordDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'provider': instance.provider,
      'confirmed': instance.confirmed,
      'blocked': instance.blocked,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'username': instance.username,
      'phoneNumber': instance.phoneNumber,
    };
