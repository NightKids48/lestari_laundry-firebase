// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'satuan_collection_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SatuanCollectionDataResponse _$SatuanCollectionDataResponseFromJson(
        Map<String, dynamic> json) =>
    SatuanCollectionDataResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => SatuanDataResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : ProductPieceMetaDataResponse.fromJson(
              json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SatuanCollectionDataResponseToJson(
        SatuanCollectionDataResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
