
import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:dice_app/constants/colors/app_colors.dart';
import 'package:dice_app/constants/text_styles/app_text_styles.dart';
import 'package:dice_app/riverpod/providers/home_page_riverpod_provider.dart';
import 'package:dice_app/widgets/dice_widget.dart';



class HomePageWithRiverpod extends StatelessWidget {
    const HomePageWithRiverpod({ super.key });

 
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
          child: Consumer(
            builder: (context, ref, child) {
              final homeNotifier = ref.watch(homeNotifierRiverpodProvider);
                return
             InkWell(
              borderRadius: BorderRadius.circular(15),
              splashColor: AppColors.splashColor,
              onTap: () => ref.read(homeNotifierRiverpodProvider.notifier).throwDice(),
              child: Row(
                children: [
                  DiceWidget(diceNumber: homeNotifier.firstDice),
                  const SizedBox(width: 18,),
                  DiceWidget(diceNumber: homeNotifier.secondDice,)
              
                ],
              ),);
          },
              ),
          ), 
          ),
        );
  }

   
  }





