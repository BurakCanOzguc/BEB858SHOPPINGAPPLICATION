import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginHeader extends StatefulWidget {
  const LoginHeader({super.key});

  @override
  State<LoginHeader> createState() => _LoginHeaderState();
}

class _LoginHeaderState extends State<LoginHeader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage("assets/images/beb858logo2.jpg"),
          height: 100,
          width: 250,
        ),
        Lottie.network(
            "https://lottie.host/40280da4-1b7c-4d8e-b1b0-5abb251aa259/jf6lCHmSt0.json",
            height: 175,
            width: 200),
      ],
    );
  }
}
