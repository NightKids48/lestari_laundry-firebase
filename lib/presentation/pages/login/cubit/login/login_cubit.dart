import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:lestari_laundry/domain/repository/login/login_repository.dart';
import '../../../../../base/result_entity/result_entity.dart';
import '../../../../../domain/model/data/login/login_data.dart';
import '../../../../../domain/model/request/login/login_request.dart';
import '../../../../../src/utilities/utilities.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginStates> {
  final LoginRepository repository;

  LoginCubit(this.repository) : super(LoginInitial());

  Future<void> btnlogin(LoginRequest request) async {
    emit(LoginLoading());
    final response = await repository.submitLogin(request);

    if (response is ResultSuccess) {
      emit(
        LoginIsSucces(data: (response as ResultSuccess).data),
      );
      final data = (state as LoginIsSucces).data;
      print('Token Login${data.jwt}');
      Commons().setUID(data.jwt.toString());
    } else {
      emit(LoginIsError(message: (response as ResultError).message));
    }
  }
}
