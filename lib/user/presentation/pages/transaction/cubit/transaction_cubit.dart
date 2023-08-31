import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lestari_laundry/user/domain/base/authentication_headers_request.dart';
import '../../../../base/result_entity/result_entity.dart';
import '../../../../data/utilities/utilities.dart';
import '../../../../domain/model/data/transaction/transaction_data.dart';
import '../../../../domain/model/request/transaction/transaction_collection_request.dart';
import '../../../../domain/model/request/transaction/transaction_data_request.dart';
import '../../../../domain/repository/transaction/transaction_repository.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  final TransactionRepository repository;
  TransactionCubit(
    this.repository,
  ) : super(TransactionInitial());
  Future<void> btntransaction(TransactionCollectionRequest request) async {
    emit(TransactionIsLoading());
    final token = await Commons().getUID();
    final response = await repository.submitTransaction(
        request, AuthenticationHeadersRequest(token));

    if (response is ResultSuccess) {
      emit(
        TransactionIsSuccess(data: (response as ResultSuccess).data),
      );
    } else {
      emit(
        TransactionIsFailed(message: (response as ResultError).message),
      );
    }
  }
}
