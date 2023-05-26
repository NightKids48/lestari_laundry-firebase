part of 'models.dart';

class AuthViewModel extends GetxController {
  var counter = 0.obs;
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }
}
