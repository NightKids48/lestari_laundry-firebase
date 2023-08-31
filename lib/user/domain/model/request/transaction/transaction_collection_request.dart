// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

import 'package:lestari_laundry/user/domain/model/request/transaction/transaction_data_request.dart';

part 'transaction_collection_request.g.dart';

@JsonSerializable()
class TransactionCollectionRequest {
  TransactionDataRequest data;
  TransactionCollectionRequest(
    this.data,
  );
  factory TransactionCollectionRequest.fromJson(Map<String, dynamic> json) =>
      _$TransactionCollectionRequestFromJson(json);

  Map<String, dynamic> toJson() {
    return _$TransactionCollectionRequestToJson(this);
  }
}
