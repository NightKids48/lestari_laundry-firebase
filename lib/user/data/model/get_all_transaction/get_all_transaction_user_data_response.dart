import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/get_all_transaction/get_all_transaction_user_attributes_response.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user_attributes.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_user_data.dart';

part 'get_all_transaction_user_data_response.g.dart';

abstract class GetAllTransactionUserDataResponseMapper {
  GetAllTransactionUserData toGetAllTransactionUserData();
}

@JsonSerializable()
class GetAllTransactionUserDataResponse
    implements GetAllTransactionUserDataResponseMapper {
  int? id;
  GetAllTransactionUserAttributesResponse? attributes;
  GetAllTransactionUserDataResponse({
    this.id,
    this.attributes,
  });

  factory GetAllTransactionUserDataResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllTransactionUserDataResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllTransactionUserDataResponseToJson(this);

  @override
  GetAllTransactionUserData toGetAllTransactionUserData() {
    return GetAllTransactionUserData(
      id ?? 0,
      attributes?.toGetAllTransactionUserAttributes() ??
          GetAllTransactionUserAttributes(
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
            '',
          ),
    );
  }
}
