import 'package:dice_app/services/random_service.dart';

class HomePageBusinessLogic {
  int firstDice = 5;
  int secondDice =3;

  
  void throwDice(){
    firstDice  = RandomService.getRandomNumber();
    secondDice = RandomService.getRandomNumber();
  }

}
  HomePageBusinessLogic homePageBusinessLogic = HomePageBusinessLogic();
