// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileDataResponse _$ProfileDataResponseFromJson(Map<String, dynamic> json) =>
    ProfileDataResponse(
      id: json['id'] as int?,
      email: json['email'] as String?,
      provider: json['provider'] as String?,
      confirmed: json['confirmed'] as bool?,
      blocked: json['blocked'] as bool?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      username: json['username'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      fullname: json['fullname'] as String?,
      userRole: json['userRole'] as String?,
      avatar: json['avatar'] == null
          ? null
          : AvatarDataResponse.fromJson(json['avatar'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : NameDataResponse.fromJson(json['name'] as Map<String, dynamic>),
      address: json['address'] == null
          ? null
          : AddressDataResponse.fromJson(
              json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProfileDataResponseToJson(
        ProfileDataResponse instance) =>
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
      'fullname': instance.fullname,
      'userRole': instance.userRole,
      'avatar': instance.avatar,
      'name': instance.name,
      'address': instance.address,
    };
