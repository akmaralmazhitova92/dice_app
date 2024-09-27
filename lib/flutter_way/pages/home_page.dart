
import 'package:flutter/material.dart';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/flutter_way/business_logic/home_page_business_logic.dart';
import 'package:dice_app/widgets/dice_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({ super.key });

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.bgColor,
        title: const Text(
          'Dice',
        style: AppTextStyles.appBarTitle),
        centerTitle: true,
      ),
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Center(
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            splashColor: AppColors.splashColor,
            onTap: throwDice,
            child: Row(
              children: [
                DiceWidget(diceNumber: homePageBusinessLogic.firstDice),
                const SizedBox(width: 18,),
                DiceWidget(diceNumber: homePageBusinessLogic.secondDice,)
            
              ],
            ),
          ),
        ),
      ),

    );
  }

  void throwDice(){
    homePageBusinessLogic.throwDice();
    setState(() {
      
    });
  }
}


