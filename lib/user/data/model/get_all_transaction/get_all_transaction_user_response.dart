import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/get_all_transaction/get_all_transaction_user_data_response.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user_data.dart';

part 'get_all_transaction_user_response.g.dart';

abstract class GetAllTransactionUserResponseMapper {
  GetAllTransactionUser toGetAllTransactionUser();
}

@JsonSerializable()
class GetAllTransactionUserResponse
    implements GetAllTransactionUserResponseMapper {
  GetAllTransactionUserDataResponse? data;
  GetAllTransactionUserResponse({
    this.data,
  });

  factory GetAllTransactionUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllTransactionUserResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllTransactionUserResponseToJson(this);

  @override
  GetAllTransactionUser toGetAllTransactionUser() {
    return GetAllTransactionUser(
      data?.toGetAllTransactionUserData() ??
          GetAllTransactionUserData(
            0,
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
          ),
    );
  }
}
