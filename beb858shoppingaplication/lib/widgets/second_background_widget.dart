import 'package:beb858shoppingaplication/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class SecondBackground extends StatefulWidget {
  const SecondBackground({super.key, required this.body});

  final SingleChildScrollView body;

  @override
  State<SecondBackground> createState() => _SecondBackgroundState();
}

class _SecondBackgroundState extends State<SecondBackground> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: const [
          SizedBox(
            height: 40,
            width: 150,
            child: SearchBar(),
          ),
        ],
        title: const Text(
          "Beb858 Shopping",
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 252, 1, 164),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 157, 14, 114),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purple,
                  Colors.white70,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned.fill(
            child: widget.body,
          ),
        ],
      ),
    );
  }
}
