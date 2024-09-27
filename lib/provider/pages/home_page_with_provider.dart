
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/provider/providers/home_page_provider.dart';
import 'package:dice_app/widgets/dice_widget.dart';


class HomePageWithProvider extends StatefulWidget {
  const HomePageWithProvider({ super.key });

  @override
   HomePageWithProviderState createState() =>  HomePageWithProviderState();
}

class  HomePageWithProviderState extends State <HomePageWithProvider> {
 
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
            child: Consumer<HomePageProvider>(
              builder: (context, provider, child){
                return Row(
              children: [
                DiceWidget(diceNumber: provider.firstDice),
                const SizedBox(width: 18,),
                DiceWidget(diceNumber: provider.secondDice,)
            
              ],
            );},
            ), 
          ),
        ),
      ),

    );
  }

  void throwDice(){
   context.read<HomePageProvider>().throwDice();
   
  }
}




