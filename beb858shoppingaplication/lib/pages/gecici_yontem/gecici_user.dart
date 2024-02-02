import 'package:flutter/material.dart';

class GeciciUser extends StatefulWidget {
  final String email;
  const GeciciUser({super.key, required this.email});

  @override
  State<GeciciUser> createState() => _GeciciUserState();
}

class _GeciciUserState extends State<GeciciUser> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(widget.email),
    );
  }
}
