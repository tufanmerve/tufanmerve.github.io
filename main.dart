import 'package:bacik/giris.dart';
import 'package:flutter/material.dart';

import '202/dio_api_page.dart';
import '202/service/ex_dio_service.dart';
import '202/service/news_api/api_news_.dart';
import '202/service/news_api/new_model.dart';
import '202/service/service_learn.dart';
import 'async_await.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            navigationBarTheme: NavigationBarThemeData(
                indicatorColor: Color.fromARGB(255, 214, 205, 164)),
            appBarTheme:
                AppBarTheme(backgroundColor: Color.fromARGB(255, 61, 131, 97)),
            inputDecorationTheme: const InputDecorationTheme(
              fillColor: Colors.transparent,
              filled: true,
              iconColor: Colors.white,
              hintStyle: TextStyle(color: Color.fromARGB(255, 238, 242, 230)),
              labelStyle: TextStyle(color: Color.fromARGB(255, 238, 242, 230)),
            ),
            colorScheme: const ColorScheme.light(
                primary: Color.fromARGB(255, 214, 205, 164),
                secondary: Color.fromARGB(255, 28, 103, 88),
                tertiary: Color.fromARGB(255, 238, 242, 230)),
            scaffoldBackgroundColor: Color.fromARGB(255, 28, 103, 88),
            buttonTheme: ButtonThemeData(
              textTheme: ButtonTextTheme.primary,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
            ),
            iconTheme: IconThemeData(color: Color.fromARGB(255, 214, 205, 164)),
            textTheme: TextTheme(
                headlineMedium:
                    TextStyle(color: Color.fromARGB(255, 238, 242, 230)))),
        home: const ExDioPage());
  }
}
