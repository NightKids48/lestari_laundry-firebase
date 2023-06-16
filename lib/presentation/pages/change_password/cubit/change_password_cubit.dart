// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../base/result_entity/result_entity.dart';
import '../../../../domain/model/data/change_password/change_password_data.dart';
import '../../../../domain/model/request/change_password/change_password_request.dart';
import '../../../../domain/repository/change_password.dart/change_password_repository.dart';
import '../../../../src/utilities/utilities.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final ChangePasswordRepository repository;
  ChangePasswordCubit(this.repository) : super(ChangePasswordInitial());
  Future<void> btnchangePassword(ChangePasswordRequest request) async {
    emit(ChangePasswordIsLoading());
    final response = await repository.submitChangePassword(request);

    if (response is ResultSuccess) {
      emit(
        ChangePasswordIsSuccess(data: (response as ResultSuccess).data),
      );
      final data = (state as ChangePasswordIsSuccess).data;
      Commons().setUID(data.jwt.toString());
    } else {
      emit(ChangePasswordIsFailed(message: (response as ResultError).message));
    }
  }
}
