import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
              child: Align(
            child: ListView(
              children: <Widget>[
                DrawerHeader(
                  child: Align(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(Icons.home,
                            color: Colors.yellow, size: size.height * 0.1),
                        Text("BEB858"),
                      ],
                    ),
                  ),
                  decoration: BoxDecoration(color: Colors.blue),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
