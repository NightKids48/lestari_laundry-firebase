// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressDataResponse _$AddressDataResponseFromJson(Map<String, dynamic> json) =>
    AddressDataResponse(
      id: json['id'] as int?,
      rt: json['rt'] as String?,
      rw: json['rw'] as String?,
      city: json['city'] as String?,
      province: json['province'] as String?,
      zipcode: json['zipcode'] as String?,
      adressDetail: json['adressDetail'] as String?,
      longitude: json['longitude'] as String?,
      latitude: json['latitude'] as String?,
    );

Map<String, dynamic> _$AddressDataResponseToJson(
        AddressDataResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rt': instance.rt,
      'rw': instance.rw,
      'city': instance.city,
      'province': instance.province,
      'zipcode': instance.zipcode,
      'adressDetail': instance.adressDetail,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
    };
