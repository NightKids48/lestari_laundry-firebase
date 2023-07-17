part of 'change_password_cubit.dart';

abstract class ChangePasswordState extends Equatable {
  const ChangePasswordState();

  @override
  List<Object> get props => [];
}

class ChangePasswordInitial extends ChangePasswordState {}

class ChangePasswordIsLoading extends ChangePasswordState {}

class ChangePasswordIsSuccess extends ChangePasswordState {
  final ChangePasswordData data;
  ChangePasswordIsSuccess({
    required this.data,
  });
}

class ChangePasswordIsFailed extends ChangePasswordState {
  String? message;
  ChangePasswordIsFailed({this.message});
}
