import 'package:beb858shoppingaplication/pages/login/login_button.dart';
import 'package:beb858shoppingaplication/pages/login/textformfield.dart';
import 'package:beb858shoppingaplication/pages/sellerlogin/seller_textformfield.dart';
import 'package:flutter/material.dart';

class SellerLoginPage extends StatefulWidget {
  const SellerLoginPage({super.key});

  @override
  State<SellerLoginPage> createState() => _SellerLoginPageState();
}

class _SellerLoginPageState extends State<SellerLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 169, 167, 167),
      appBar: AppBar(
        title: const Text(
          "Beb858 Shopping Sites",
          style: TextStyle(
            color: Color.fromARGB(255, 252, 1, 164),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 92, 90, 90),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 50, right: 50),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 20,
                          blurRadius: 20,
                          offset: Offset(0, 3),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: const Image(
                        image: AssetImage("assets/images/beb858logo.jpg"),
                        height: 200,
                        width: 250,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  LoginMyToggleButton(),
                  Form(
                    child: Container(
                      height: 250,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20)),
                      child: SellerLoginTextFormField(),
                    ),
                  ),
                ],
              ),
            ),
          ),
          LoginSignInButton(),
        ],
      ),
    );
  }
}
