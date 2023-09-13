import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../data/utilities/utilities.dart';
import '../../../../base/result_entity/result_entity.dart';
import '../../../../domain/base/authentication_headers_request.dart';
import '../../../../domain/model/data/profile/profile_data.dart';
import '../../../../domain/repository/profile/profile_repository.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository repository;
  ProfileCubit(this.repository) : super(ProfileInitial());

  Future<void> fetchProfile() async {
    emit(ProfileIsLoading());
    final token = await Commons().getUID();
    if (token != null) {
      final response = await repository.fetchProfile(
        AuthenticationHeadersRequest(token),
      );

      if (response is ResultSuccess) {
        emit(ProfileIsSuccess(data: (response as ResultSuccess).data));
        final data = (state as ProfileIsSuccess).data;
        print('Profile Data: ${data!.avatar.ext}');
        // final jarak = Commons().calculateDistance(
        //   -6.24027, 106.55387, 0, 0,
        // int.parse(data!.address.latitude).toDouble(),
        //int.parse(data.address.longitude).toDouble(),
        //  );
        //  Get.put(OrderController()).setCreateOrder(
        //    CreateOrder(data.id, 0, jarak.toString(), 0),
        //   );
      } else {
        emit(ProfileIsFailed(message: (response as ResultError).message));
      }
    } else {
      print('ERROR BLOC PROFILE');
      emit(ProfileIsFailed(message: 'Forbidden'));
    }
  }
}
