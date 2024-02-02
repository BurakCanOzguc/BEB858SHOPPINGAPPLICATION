import 'package:beb858shoppingaplication/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class BackGroundWidget extends StatefulWidget {
  const BackGroundWidget({super.key, required this.body});

  final SingleChildScrollView body;

  @override
  State<BackGroundWidget> createState() => _BackGroundWidgetState();
}

class _BackGroundWidgetState extends State<BackGroundWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Beb858 Shopping",
          style: TextStyle(
            color: Color.fromARGB(255, 252, 1, 164),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 92, 90, 90),
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
