import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lestari_laundry/user/domain/model/data/delivery_provider/delivery_data.dart';
import '../../../../base/base_config/base_config.dart';
import '../../../../base/result_entity/result_entity.dart';
import '../../../../domain/base/authentication_headers_request.dart';
import '../../../../domain/repository/delivery_provider/delivery_provider_repository.dart';

part 'delivery_provider_state.dart';

class DeliveryProviderCubit extends Cubit<DeliveryProviderState> {
  final DeliveryProviderRepository repository;
  DeliveryProviderCubit(this.repository) : super(DeliveryProviderInitial());
  Future<void> fetchDeliveryProvider() async {
    emit(DeliveryProviderIsLoading());

    //final token = await Commons().getToken();
    final tokenManual = BaseConfig.TOKEN;
    // ignore: unnecessary_null_comparison
    if (tokenManual != null) {
      final response = await repository.fetchDeliveryProvider(
        AuthenticationHeadersRequest(tokenManual),
      );

      if (response is ResultSuccess) {
        emit(DeliveryProviderIsSuccess(data: (response as ResultSuccess).data));
      } else {
        emit(DeliveryProviderIsFailed(
            message: (response as ResultError).message));
      }
    } else {
      emit(DeliveryProviderIsFailed(message: 'Forbidden'));
    }
  }
}
