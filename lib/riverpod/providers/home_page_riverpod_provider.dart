
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dice_app/services/random_service.dart';

class HomePageRiverpodProvider extends StateNotifier<HomePageWithRiverpodState> {

  HomePageRiverpodProvider():
  super(HomePageWithRiverpodState(firstDice: 5, secondDice: 6));

  
  void throwDice(){
   state = HomePageWithRiverpodState(
    firstDice: RandomService.getRandomNumber(), 
    secondDice: RandomService.getRandomNumber());}


  }

    final homeNotifierRiverpodProvider =
    StateNotifierProvider<HomePageRiverpodProvider, HomePageWithRiverpodState>((ref) {
  return HomePageRiverpodProvider();
});





 class HomePageWithRiverpodState {
     final int firstDice;
     final int secondDice;

  HomePageWithRiverpodState({
    required this.firstDice, 
    required this.secondDice});
 }