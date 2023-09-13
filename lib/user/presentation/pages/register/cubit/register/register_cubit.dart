import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../../../base/result_entity/result_entity.dart';
import '../../../../../domain/model/request/register/register_request.dart';
import '../../../../../domain/repository/register/register_repository.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  final RegisterRepository repository;
  RegisterCubit(this.repository) : super(RegisterInitial());
  Future<void> btnregister(RegisterRequest request) async {
    emit(RegisterLoading());
    final response = await repository.submitRegister(request);

    if (response is ResultSuccess) {
      emit(
        RegisterIsSucces(message: 'Register Berhasil'),
      );
    } else {
      emit(RegisterIsError(message: (response as ResultError).message));
    }
  }
}
