// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_meta_data_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeliveryMetaDataResponse _$DeliveryMetaDataResponseFromJson(
        Map<String, dynamic> json) =>
    DeliveryMetaDataResponse(
      json['page'] as int?,
      json['pageSize'] as int?,
      json['pageCount'] as int?,
      json['total'] as int?,
    );

Map<String, dynamic> _$DeliveryMetaDataResponseToJson(
        DeliveryMetaDataResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'pageSize': instance.pageSize,
      'pageCount': instance.pageCount,
      'total': instance.total,
    };
