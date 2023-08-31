import 'package:json_annotation/json_annotation.dart';
import 'package:lestari_laundry/user/data/model/get_all_transaction/get_all_transaction_data_attributes_response.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_data.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_data_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_delivery.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_payment_info.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user_attributes.dart';
import 'package:lestari_laundry/user/domain/model/data/get_all_transaction/get_all_transaction_user_data.dart';

part 'get_all_transaction_data_response.g.dart';

abstract class GetAllTransactionDataResponseMapper {
  GetAllTransactionData toGetAllTransactionData();
}

@JsonSerializable()
class GetAllTransactionDataResponse
    implements GetAllTransactionDataResponseMapper {
  int? id;
  GetAllTransactionDataAttributesResponse? attributes;
  GetAllTransactionDataResponse(
    this.id,
    this.attributes,
  );

  factory GetAllTransactionDataResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllTransactionDataResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllTransactionDataResponseToJson(this);

  @override
  GetAllTransactionData toGetAllTransactionData() {
    return GetAllTransactionData(
      id ?? 0,
      attributes?.toGetAllTransactionDataAttributes() ??
          GetAllTransactionDataAttributes(
            '',
            '',
            '',
            '',
            '',
            [],
            GetAllTransactionDelivery(
              0,
              '',
              '',
            ),
            GetAllTransactionPaymentInfo(
              0,
              '',
              '',
            ),
            GetAllTransactionUser(
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
            ),
          ),
    );
  }
}
