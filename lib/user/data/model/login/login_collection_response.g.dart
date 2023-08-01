// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginCollectionResponse _$LoginCollectionResponseFromJson(
        Map<String, dynamic> json) =>
    LoginCollectionResponse(
      jwt: json['jwt'] as String?,
      data: json['data'] == null
          ? null
          : LoginDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginCollectionResponseToJson(
        LoginCollectionResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'data': instance.data,
    };
