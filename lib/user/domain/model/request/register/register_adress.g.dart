// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_adress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterAdress _$RegisterAdressFromJson(Map<String, dynamic> json) =>
    RegisterAdress(
      json['rt'] as String,
      json['rw'] as String,
      json['city'] as String,
      json['province'] as String,
      json['zipcode'] as String,
      json['adressDetail'] as String,
      RegisterAdressCoordinates.fromJson(
          json['coordinates'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RegisterAdressToJson(RegisterAdress instance) =>
    <String, dynamic>{
      'rt': instance.rt,
      'rw': instance.rw,
      'city': instance.city,
      'province': instance.province,
      'zipcode': instance.zipcode,
      'adressDetail': instance.adressDetail,
      'coordinates': instance.coordinates,
    };
