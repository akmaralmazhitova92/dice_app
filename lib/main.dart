import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart' as provider;

import 'package:dice_app/flutter_way/pages/home_page.dart';
import 'package:dice_app/getx/pages/home_page_with_getx.dart';
import 'package:dice_app/provider/pages/home_page_with_provider.dart';
import 'package:dice_app/provider/providers/home_page_provider.dart';
import 'package:dice_app/riverpod/pages/home_page_with_riverpod.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dice app',
      home: HomePage(),
    );
     
  }

}

  class MyGetXApp extends StatelessWidget {
  const MyGetXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Dice app',
      home: HomePageWithGetX(),
    );
    }
  }


 class MyProviderApp extends StatelessWidget {
  const MyProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice App',
      home: provider.ChangeNotifierProvider(
        create: (context) => HomePageProvider(),
        child: const HomePageWithProvider(),
      ),
    );
  }
}
  
  class MyRiverpodApp extends StatelessWidget {
  const MyRiverpodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: MaterialApp(
        title: 'Dice App',
        home: HomePageWithRiverpod(),
      ),
    );
  }
}
