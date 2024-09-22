import 'package:fadi_hosbital/core/consts.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final GlobalKey<FormState> myform;
  const LoginButton({super.key, required this.myform});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      MaterialButton(
          onPressed: () {
            if (widget.myform.currentState!.validate()) {
              Navigator.pushReplacementNamed(context, 'homepage');
            }
          },
          color: lightGreen,
          padding: const EdgeInsets.all(17),
          height: 30,
          minWidth: 300,
          textColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
          child: const Text('تسجيل دخول', style: TextStyle(fontSize: 20)))
    ]));
  }
}
