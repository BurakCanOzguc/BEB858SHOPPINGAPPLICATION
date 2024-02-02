import 'package:beb858shoppingaplication/pages/Anasayfa/anasayfa_page.dart';
import 'package:beb858shoppingaplication/pages/Kay%C4%B1tSayfa/SignUp_page.dart';
import 'package:beb858shoppingaplication/pages/login/login_page.dart';
import 'package:beb858shoppingaplication/pages/sellerlogin/seller_login.dart';
import 'package:flutter/material.dart';

bool isUser = true;

class LoginMyToggleButton extends StatefulWidget {
  const LoginMyToggleButton({super.key});

  @override
  State<LoginMyToggleButton> createState() => _LoginMyToggleButtonState();
}

class _LoginMyToggleButtonState extends State<LoginMyToggleButton> {
  static const List<Widget> kullanici = <Widget>[
    Text("Kullanıcı Girişi"),
    Text("Mağaza Kullanıcı Girişi"),
  ];

  final List<bool> _secilikullanici = <bool>[true, false];
  bool vertical = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: ToggleButtons(
              direction: vertical ? Axis.vertical : Axis.horizontal,
              onPressed: (int index) {
                setState(() {
                  if (index == 0) {
                    isUser = true;
                  } else if (index == 1) {
                    isUser = false;
                  }
                  // The button that is tapped is set to true, and the others to false.
                  for (int i = 0; i < _secilikullanici.length; i++) {
                    _secilikullanici[i] = i == index;
                  }
                });
              },
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              selectedBorderColor: Colors.grey[700],
              selectedColor: Colors.blue,
              fillColor: Colors.blue[200],
              color: Colors.purple[400],
              constraints: const BoxConstraints(
                minHeight: 40.0,
                minWidth: 125.0,
              ),
              isSelected: _secilikullanici,
              children: kullanici,
            ),
          ),
        ),
      ],
    );
  }
}

//**************************************************************************** */
class LoginSignInButton extends StatefulWidget {
  const LoginSignInButton({super.key});

  @override
  State<LoginSignInButton> createState() => _LoginSignInButtonState();
}

class _LoginSignInButtonState extends State<LoginSignInButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              style: const ButtonStyle(
                  shadowColor: MaterialStatePropertyAll(
                Colors.black,
              )),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        AnaSayfa(title: isUser ? "kullanıcı" : "mağaza")));
              },
              child: const Text("Giriş Yap",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ),
          const Text("Henüz Üye Değil misin?"),
          TextButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SignUpPage()));
            },
            child: const Text("Kaydol",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
