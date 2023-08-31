part of 'utilities.dart';

class Commons {
  final prefs = SharedPreferences.getInstance();
  final picker = ImagePicker();
  Future<double> calculateDistance(
    double lat1,
    double lon1,
    double lat2,
    double lon2,
  ) async {
    try {
      double distanceInMeters = await Geolocator.distanceBetween(
        lat1,
        lon1,
        lat2,
        lon2,
      );

      // Konversi jarak dalam meter menjadi kilometer
      double distanceInKm = distanceInMeters / 1000;

      return distanceInKm;
    } catch (e) {
      print('Error calculating distance: $e');
      return 0;
    }
  }

  int ongkosKirim(
      {int tarif = 2000, required int totalKilo, required double jarak}) {
    if (jarak > 2) {
      tarif = 3000;
    }
    final ongkosKirim = (jarak * tarif) + (totalKilo * tarif);
    return ongkosKirim.toInt();
  }

  void setUID(String uid) async {
    final storage = await prefs;
    await storage.setString(myUID, uid);
  }

  Future<String> getUID() async {
    final storage = await prefs;
    return storage.getString(myUID)!;
  }

  Future<bool> removeUID() async {
    final storage = await prefs;
    return storage.remove(myUID);
  }

  String setPrice(double price) {
    return NumberFormat.currency(locale: 'id_ID ', decimalDigits: 0)
        .format(price)
        .toString();
  }

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: message.text.make()));
  }

  void showSnackbarError(BuildContext context, String msg) {
    showTopSnackBar(context, CustomSnackBar.error(message: msg));
  }

  void showSnackbarInfo(BuildContext context, String msg) {
    showTopSnackBar(context, CustomSnackBar.info(message: msg));
  }

  //fungsi untuk get Image from gallery
  Future<File> getImage() async {
    final pickedFile = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 30,
    );
    return File(pickedFile!.path);
  }
}
