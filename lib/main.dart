import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homePage.dart';
import 'flashcardsPage.dart';
import 'routes.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Russian Flashcards',
      initialRoute: Routes.homePage,
      initialBinding: HomePageBinding(),
      getPages: [
        GetPage(name: Routes.homePage, page: () => const HomePage()),
        GetPage(name: Routes.flashcardsPage, page: () => const FlashcardsPage()),
      ],
    );
  }
}

