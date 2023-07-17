// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'location_cubit.dart';

abstract class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object> get props => [];
}

class LocationInitial extends LocationState {}

class LocationIsLoading extends LocationState {}

class LocationIsSuccess extends LocationState {
  final double latitude;
  final double longitude;
  final String address;
  final double distance;
  LocationIsSuccess({
    required this.latitude,
    required this.longitude,
    required this.address,
    required this.distance,
  });
}

class LocationIsError extends LocationState {
  final String message;

  LocationIsError(this.message);
}
