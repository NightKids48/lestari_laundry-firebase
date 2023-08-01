// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordCollectionResponse _$ChangePasswordCollectionResponseFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordCollectionResponse(
      jwt: json['jwt'] as String?,
      data: json['data'] == null
          ? null
          : ChangePasswordDataResponse.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChangePasswordCollectionResponseToJson(
        ChangePasswordCollectionResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'data': instance.data,
    };
