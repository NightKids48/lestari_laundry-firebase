import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:get/get.dart';
import 'package:lestari_laundry/user/data/controller/controllers.dart';
import 'package:lestari_laundry/user/domain/model/data/login/login_data_user.dart';
import '../../../../../base/result_entity/result_entity.dart';
import '../../../../../data/utilities/utilities.dart';
import '../../../../../domain/model/data/login/login_data.dart';
import '../../../../../domain/model/request/login/login_request.dart';
import '../../../../../domain/repository/login/login_repository.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepository repository;

  LoginCubit(this.repository) : super(LoginInitial());

  Future<void> btnlogin(LoginRequest request) async {
    emit(LoginIsLoading());
    final response = await repository.submitLogin(request);

    if (response is ResultSuccess) {
      emit(
        LoginIsSucces(data: (response as ResultSuccess).data),
      );
      final data = (state as LoginIsSucces).data;
      print('Token Login${data.jwt}');
      Commons().setUID(data.jwt.toString());
      Get.put(OrderController()).setLoginDataUser(
        LoginDataUser(
          data.data.id,
          data.data.email,
          data.data.provider,
          data.data.confirmed,
          data.data.blocked,
          data.data.createdAt,
          data.data.updateAt,
          data.data.username,
          data.data.phonenumber,
          data.data.fullname,
          data.data.userRole,
        ),
      );
    } else {
      emit(LoginIsError(message: (response as ResultError).message));
    }
  }
}
