import 'package:flutter/material.dart';

class SellerLoginTextFormField extends StatefulWidget {
  const SellerLoginTextFormField({super.key});

  @override
  State<SellerLoginTextFormField> createState() =>
      _SellerLoginTextFormFieldState();
}

class _SellerLoginTextFormFieldState extends State<SellerLoginTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 10, right: 10, left: 10),
          child: Text(
            "Mağaza Kullanıcı Girişi",
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        //KULLANICI ADI TEXTFORMFİELD************
        Padding(
          padding: const EdgeInsets.only(top: 20, right: 10, left: 10),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              labelText: "Ad",
              hintText: "Lütfen Adınızı Giriniz",
              // SEÇİLİ BORDER*******************
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(55)),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 3.0), // colorscheme
              ),
              // NORMAL BORDER*******************
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
        ), //kullanıcı Adı
        const SizedBox(
          height: 20,
        ),
        // ŞİFRE TEXTFORMFİELD********************
        Padding(
          padding: const EdgeInsets.only(top: 10, right: 10, left: 10),
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.person),
              labelText: "Şifre",
              hintText: "Lütfen Şifreyi Giriniz",
              // seçili border***********
              focusedBorder: OutlineInputBorder(
                borderRadius: const BorderRadius.all(Radius.circular(55)),
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.onPrimary,
                    width: 3.0), // colorscheme
              ),
              // normal border*********
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Theme.of(context).colorScheme.primary, width: 2.0),
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
