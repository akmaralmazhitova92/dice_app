import 'package:get/get.dart';

import 'package:dice_app/services/random_service.dart';

class HomePageController extends GetxController {
  Rx<int> firstDice = 6.obs;
  RxInt secondDice = 3.obs;

  void throwDice() {
    firstDice.value = RandomService.getRandomNumber();
    secondDice.value = RandomService.getRandomNumber();
    update();
  }
}