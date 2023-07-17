// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kilogram_collection_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KilogramCollectionDataResponse _$KilogramCollectionDataResponseFromJson(
        Map<String, dynamic> json) =>
    KilogramCollectionDataResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => KilogramDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : ProductMetaDataResponse.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KilogramCollectionDataResponseToJson(
        KilogramCollectionDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
