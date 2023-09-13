import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../../../data/utilities/utilities.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationInitial());
  Future<void> getLocation() async {
    try {
      emit(LocationIsLoading());
      //Permiision GPG
      PermissionStatus permissionStatus =
          await Permission.locationWhenInUse.request();
      if (permissionStatus.isGranted) {
        // Mendapatkan posisi saat ini
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high,
        );

        // Mendapatkan alamat lengkap berdasarkan posisi
        List<Placemark> placemarks = await placemarkFromCoordinates(
          position.latitude,
          position.longitude,
        );
        Placemark placemark = placemarks.first;

        final double distance = await Commons().calculateDistance(
          position.latitude,
          position.longitude,
          -6.134928,
          106.633043,
        );
        final ongkosKirim =
            Commons().ongkosKirim(totalKilo: 3, jarak: distance);
        print('lat1 :${position.latitude}, long1:${position.longitude}');
        print('JARAK :${distance} KM');
        print(
            'ONGKOS KIRIM : RP ${Commons().setPrice(ongkosKirim.toDouble())}');

        emit(
          LocationIsSuccess(
              latitude: position.latitude,
              longitude: position.longitude,
              city: placemark.subAdministrativeArea!,
              province: placemark.administrativeArea!,
              zipcode: placemark.postalCode!,
              address: placemark.thoroughfare! +
                  ', ' +
                  placemark.subLocality! +
                  ', ' +
                  placemark.locality! +
                  ', ' +
                  placemark.postalCode! +
                  ', ' +
                  placemark.subAdministrativeArea!,
              distance: distance),
        );
        // print('Address: ${placemark.street! + ', ' + placemark.subLocality!}');
      } else {
        emit(LocationIsError('Izin lokasi tidak diberikan'));
      }
    } catch (e) {
      emit(LocationIsError('Gagal mendapatkan lokasi'));
    }
  }
}
