// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'name_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NameDataResponse _$NameDataResponseFromJson(Map<String, dynamic> json) =>
    NameDataResponse(
      id: json['id'] as int?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$NameDataResponseToJson(NameDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
