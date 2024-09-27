
import 'package:flutter/material.dart';

import 'package:dice_app/services/random_service.dart';

class HomePageProvider extends ChangeNotifier {
  int firstDice = 5;
  int secondDice =3;

  
  void throwDice(){
    firstDice  = RandomService.getRandomNumber();
    secondDice = RandomService.getRandomNumber();

    notifyListeners();
  }

}
