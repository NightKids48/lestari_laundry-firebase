import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../base/result_entity/result_entity.dart';
import '../../../../domain/base/authentication_headers_request.dart';
import '../../../../domain/model/data/profile/profile_data.dart';
import '../../../../domain/repository/profile/profile_repository.dart';
import '../../../../src/utilities/utilities.dart';

part 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final ProfileRepository repository;
  ProfileCubit(this.repository) : super(ProfileInitial());

  Future<void> fetchProfile() async {
    emit(ProfileIsLoading());
    final token = await Commons().getUID();
    print('TOKEN :${token}');
    if (token != null) {
      final response = await repository.fetchProfile(
        AuthenticationHeadersRequest(token),
      );

      if (response is ResultSuccess) {
        emit(ProfileIsSuccess(data: (response as ResultSuccess).data));
      } else {
        emit(ProfileIsFailed(message: (response as ResultError).message));
      }
    } else {
      print('ERROR BLOC PROFILE');
      emit(ProfileIsFailed(message: 'Forbidden'));
    }
  }
}
