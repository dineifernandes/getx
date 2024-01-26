import 'package:get/get.dart';

class InitialController extends GetxController {
  RxString btText = "".obs;
  int numero = 0;

  void btClick() {
    print("Click");

    numero++;
    btText.value = "Botão clicado $numero vezes.";
  }
}
