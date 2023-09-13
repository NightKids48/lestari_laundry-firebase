import 'package:lestari_laundry/user/domain/model/data/transaction/transaction_data_attributes.dart';

class TransactionData {
  int id;
  TransactionDataAttributes attributes;
  TransactionData(
    this.id,
    this.attributes,
  );
}
