part of 'controllers.dart';

class MyController extends GetxController {
  var order = 1.obs;
  var shirt = 0.obs;
  var tshirt = 0.obs;
  var underwear = 0.obs;
  var pants = 0.obs;
  int get sum => shirt.value + tshirt.value + underwear.value + pants.value;

  increment() {
    order.value++;
  }

  decrement() {
    if (order.value <= 0) {
    } else {
      order.value--;
    }
  }

  shirtplus() {
    shirt.value++;
  }

  shirtmin() {
    if (shirt.value <= 0) {
    } else {
      shirt.value--;
    }
  }

  tshirtplus() {
    tshirt.value++;
  }

  tshirtmin() {
    if (tshirt.value <= 0) {
    } else {
      tshirt.value--;
    }
  }

  underwearplus() {
    underwear.value++;
  }

  underwearmin() {
    if (underwear.value <= 0) {
    } else {
      underwear.value--;
    }
  }

  pantsplus() {
    pants.value++;
  }

  pantsmin() {
    if (pants.value <= 0) {
    } else {
      pants.value--;
    }
  }
}

class OrderController extends GetxController {
  var drywash = 2500.obs;
  var irononly = 2500.obs;
  var fullservice = 5000.obs;
}
