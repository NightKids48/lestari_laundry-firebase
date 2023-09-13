// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lestari_laundry/user/domain/repository/get_all_transaction/get_all_transaction_repository.dart';
import '../../../../../../../base/base_config/base_config.dart';
import '../../../../../../../base/result_entity/result_entity.dart';
import '../../../../../../../domain/base/authentication_headers_request.dart';
import '../../../../../../../domain/model/data/get_all_transaction/get_all_transaction_data.dart';

part 'get_all_transaction_state.dart';

class GetAllTransactionCubit extends Cubit<GetAllTransactionState> {
  final GetAllTransactionRepository repository;
  GetAllTransactionCubit(this.repository) : super(GetAllTransactionInitial());
  Future<void> fetchgetalltransaction() async {
    emit(GetAllTransactionIsLoading());

    //final token = await Commons().getToken();
    final tokenManual = BaseConfig.TOKEN;
    if (tokenManual != '') {
      final response = await repository.fetchgetalltransaction(
        AuthenticationHeadersRequest(tokenManual),
      );

      if (response is ResultSuccess) {
        emit(
            GetAllTransactionIsSuccess(data: (response as ResultSuccess).data));
      } else {
        emit(GetAllTransactionIsFailed(
            message: (response as ResultError).message));
      }
    } else {
      emit(
        GetAllTransactionIsFailed(message: 'Forbidden'),
      );
    }
  }
}
