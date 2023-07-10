part of 'profile_cubit.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();

  @override
  List<Object> get props => [];
}

class ProfileInitial extends ProfileState {}

class ProfileIsLoading extends ProfileState {}

class ProfileIsSuccess extends ProfileState {
  final ProfileData? data;
  ProfileIsSuccess({
    this.data,
  });
}

class ProfileIsFailed extends ProfileState {
  final String? message;
  ProfileIsFailed({
    this.message,
  });
}
