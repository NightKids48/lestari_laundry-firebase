import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../../base/base_config/base_config.dart';
import '../../../../../../base/result_entity/result_entity.dart';
import '../../../../../../domain/base/authentication_headers_request.dart';
import '../../../../../../domain/model/data/satuan_product/satuan_data.dart';
import '../../../../../../domain/repository/satuan/satuan_repository.dart';
part 'satuan_state.dart';

class SatuanCubit extends Cubit<SatuanState> {
  final SatuanRepository repository;

  SatuanCubit(this.repository) : super(SatuanInitial());

  Future<void> fetchSatuan() async {
    emit(SatuanIsLoading());

    //final token = await Commons().getToken();
    final tokenManual = BaseConfig.TOKEN;
    // ignore: unnecessary_null_comparison
    if (tokenManual != null) {
      final response = await repository.fetchSatuan(
        AuthenticationHeadersRequest(tokenManual),
      );

      if (response is ResultSuccess) {
        emit(SatuanIsSuccess(data: (response as ResultSuccess).data));
      } else {
        emit(SatuanIsFailed(message: (response as ResultError).message));
      }
    } else {
      emit(SatuanIsFailed(message: 'Forbidden'));
    }
  }
}
