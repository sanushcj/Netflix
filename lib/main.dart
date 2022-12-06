import 'package:flutter/material.dart';
import 'package:netflix/core/color/colors.dart';
import 'presentation/main page/widgets/main_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: backgroundColor,
        primarySwatch: Colors.blue,
        backgroundColor: backgroundColor,
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.white
          ),
          bodyText2: TextStyle(color: Colors.white
          )
        )
      ),
      home:  MainPage(),
    );
  }
}
