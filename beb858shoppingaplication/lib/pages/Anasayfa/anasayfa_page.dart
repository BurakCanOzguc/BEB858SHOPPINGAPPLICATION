import 'package:beb858shoppingaplication/widgets/background_widget.dart';
import 'package:beb858shoppingaplication/widgets/drawer_widget.dart';
import 'package:beb858shoppingaplication/widgets/second_background_widget.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatefulWidget {
  final String title;
  const AnaSayfa({super.key, required this.title});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return SecondBackground(
      //drawer: MyDrawer(),
      body: SingleChildScrollView(child: Text(widget.title)),
    );
  }
}
