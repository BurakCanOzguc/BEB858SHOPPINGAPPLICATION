import 'package:beb858shoppingaplication/pages/login/login_button.dart';
import 'package:beb858shoppingaplication/pages/login/login_card.dart';
import 'package:beb858shoppingaplication/pages/login/login_header.dart';
import 'package:beb858shoppingaplication/widgets/background_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const BackGroundWidget(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 0, left: 50, right: 50),
              child: Center(
                child: Column(
                  children: [
                    LoginHeader(),
                    SizedBox(
                      height: 10,
                    ),
                    LoginMyToggleButton(),
                    LoginCard(),
                  ],
                ),
              ),
            ),
            LoginSignInButton(),
          ],
        ),
      ),
    );
  }
}
