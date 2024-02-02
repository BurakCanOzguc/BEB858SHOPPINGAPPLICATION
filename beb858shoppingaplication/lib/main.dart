import 'package:beb858shoppingaplication/pages/gecici_yontem/gecici_user.dart';
import 'package:beb858shoppingaplication/pages/login/login_page.dart';
import 'package:beb858shoppingaplication/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      /*theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),*/
      home: LoginPage(),
    );
  }
}
