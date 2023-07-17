// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterDataResponse _$RegisterDataResponseFromJson(
        Map<String, dynamic> json) =>
    RegisterDataResponse(
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

Map<String, dynamic> _$RegisterDataResponseToJson(
        RegisterDataResponse instance) =>
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
