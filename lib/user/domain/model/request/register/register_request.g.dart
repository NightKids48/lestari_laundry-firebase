// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequest _$RegisterRequestFromJson(Map<String, dynamic> json) =>
    RegisterRequest(
      json['username'] as String,
      json['phoneNumber'] as String,
      json['email'] as String,
      json['password'] as String,
      json['userRole'] as String,
      RegisterRequestAddress.fromJson(json['address'] as Map<String, dynamic>),
      RegisterName.fromJson(json['name'] as Map<String, dynamic>),
      RegisterAdress.fromJson(json['adress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterRequestToJson(RegisterRequest instance) =>
    <String, dynamic>{
      'username': instance.username,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'password': instance.password,
      'userRole': instance.userRole,
      'address': instance.address,
      'name': instance.name,
      'adress': instance.adress,
    };
