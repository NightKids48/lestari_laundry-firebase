import 'package:json_annotation/json_annotation.dart';
import '../../../domain/model/data/get_all_transaction/get_all_transaction_delivery.dart';

part 'get_all_transaction_delivery_response.g.dart';

abstract class GetAllTransactionDeliveryResponseMapper {
  GetAllTransactionDelivery toGetAllTransactionDelivery();
}

@JsonSerializable()
class GetAllTransactionDeliveryResponse
    implements GetAllTransactionDeliveryResponseMapper {
  int? id;
  String? userDistance;
  String? totalDeliverCost;
  GetAllTransactionDeliveryResponse(
    this.id,
    this.userDistance,
    this.totalDeliverCost,
  );

  factory GetAllTransactionDeliveryResponse.fromJson(
          Map<String, dynamic> json) =>
      _$GetAllTransactionDeliveryResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetAllTransactionDeliveryResponseToJson(this);

  @override
  GetAllTransactionDelivery toGetAllTransactionDelivery() {
    return GetAllTransactionDelivery(
      id ?? 0,
      userDistance ?? '',
      totalDeliverCost ?? '',
    );
  }
}
