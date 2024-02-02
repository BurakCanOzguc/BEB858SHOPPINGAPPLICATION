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
      backgroundColor: Color.fromARGB(255, 249, 88, 255),
      child: ListView(
        children: <Widget>[
          //DrawerHeader********************
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Container(
              //height: 200,
              //width: double.infinity,    ****BURADA BOYUTLAR ETKİ ETMİYOR****
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.blueGrey,
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(1, 1))
                ],
                color: Colors.blue,
                border: Border.all(width: 5, color: Colors.yellow),
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 93, 192, 254),
                    Color.fromARGB(255, 249, 88, 255),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                shape: BoxShape.circle,
              ),
              child: Align(
                child: ListView(
                  children: <Widget>[
                    Align(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.person,
                              color: Colors.yellow, size: size.height * 0.1),
                          Text("Burak Can"),
                        ],
                      ),
                    ),
                    //***************DRAWERHeader
                  ],
                ),
              ),
            ),
          ),
          //ListTile************************
          ListTile(
            leading: const Icon(Icons.home, size: 40),
            title: const Text(
              "Page 1",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 40),
            title: const Text(
              "Page 2",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 40),
            title: const Text(
              "Page 3",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.home, size: 40),
            title: const Text(
              "Page 4",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            onTap: () {},
          ),
          //ListTile********************
        ],
      ),
    );
  }
}
