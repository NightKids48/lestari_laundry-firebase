// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionDataUser _$TransactionDataUserFromJson(Map<String, dynamic> json) =>
    TransactionDataUser(
      (json['user'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$TransactionDataUserToJson(
        TransactionDataUser instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
