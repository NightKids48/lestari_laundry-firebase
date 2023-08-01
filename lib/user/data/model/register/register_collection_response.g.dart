// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_collection_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterCollectionResponse _$RegisterCollectionResponseFromJson(
        Map<String, dynamic> json) =>
    RegisterCollectionResponse(
      jwt: json['jwt'] as String?,
      data: json['data'] == null
          ? null
          : RegisterDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterCollectionResponseToJson(
        RegisterCollectionResponse instance) =>
    <String, dynamic>{
      'jwt': instance.jwt,
      'data': instance.data,
    };
