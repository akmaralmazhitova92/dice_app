import 'package:flutter/material.dart';

import 'package:dice_app/constants/colors/app_colors.dart';

class AppImages {
 static Widget dice (int diceNumber){
    return Image.asset('assets/dices/dice_$diceNumber.png', 
      color: AppColors.white);
  }
}