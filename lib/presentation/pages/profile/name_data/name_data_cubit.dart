import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../base/result_entity/result_entity.dart';
import '../../../../domain/base/authentication_headers_request.dart';
import '../../../../domain/model/data/profile/name_data.dart';
import '../../../../domain/repository/profile/name_dat_repository.dart';
import '../../../../src/utilities/utilities.dart';

part 'name_data_state.dart';

class NameDataCubit extends Cubit<NameDataState> {
  final NameDataRepository repository;

  NameDataCubit(this.repository) : super(NameDataInitial());

  Future<void> fetchNameData() async {
    emit(NameDataIsLoading());
    final token = await Commons().getUID();
    print('TOKEN :${token}');
    if (token != null) {
      final response = await repository.fetchNameData(
        AuthenticationHeadersRequest(token),
      );

      if (response is ResultSuccess) {
        emit(NameDataIsSuccess(datas: (response as ResultSuccess).data));
      } else {
        emit(NameDataIsFailed(message: (response as ResultError).message));
      }
    } else {
      print('ERROR BLOC PROFILE');
      emit(NameDataIsFailed(message: 'Forbidden'));
    }
  }
}
