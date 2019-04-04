import 'package:b_hero/pages/blood_group.dart';
import 'package:b_hero/pages/login_page.dart';
import 'package:b_hero/pages/request_blood.dart';
import 'package:b_hero/pages/splash_ui.dart';
import 'package:b_hero/pages/carousel_page.dart';
import 'package:b_hero/pages/verify_number.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
     debugShowCheckedModeBanner: false,
     initialRoute: '/',
      routes: {
        '/': (context) => SplahsUi(),
        '/second': (context) => CarouselUi(),
        '/tree': (context) => LoginPage(),
      },
    );
  }
}
