// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_data.dart';
import '../kilogram_product/product_meta_data_response.dart';
import 'get_all_transaction_data_response.dart';

part 'get_all_collection_transaction_response.g.dart';

abstract class GetAllCollectionTransactionResponseMapper {
  List<GetAllTransactionData> toGetAllTransactionData();
}

@JsonSerializable()
class GetAllCollectionTransactionResponse
    implements GetAllCollectionTransactionResponseMapper {
  List<GetAllTransactionDataResponse>? data;
  ProductMetaDataResponse? meta;
  GetAllCollectionTransactionResponse({
    this.data,
    this.meta,
  });

  factory GetAllCollectionTransactionResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllCollectionTransactionResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllCollectionTransactionResponseToJson(this);

  @override
  List<GetAllTransactionData> toGetAllTransactionData() {
    return data?.map((e) => e.toGetAllTransactionData()).toList() ??
        List.empty();
  }
}
