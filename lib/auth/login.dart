import 'package:fadi_hosbital/components/loginbutton.dart';
import 'package:fadi_hosbital/core/background.dart';
import 'package:fadi_hosbital/core/consts.dart';
import 'package:fadi_hosbital/core/emaillfield.dart';
import 'package:fadi_hosbital/core/passwordfield.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  GlobalKey<FormState> form = GlobalKey();
  TextEditingController contollerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Container(
                decoration: backGroundGradient(),
                child: ListView(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Form(
                          key: form,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 100),
                                const Center(
                                    child: Text('تسجيل الدخول',
                                        style: TextStyle(
                                            fontSize: 40, color: fontcolor))),
                                const SizedBox(height: 120),
                                const Text('الحساب',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                const SizedBox(height: 10),
                                EmailField(
                                    color: indigo,
                                    contollerEmail: contollerEmail),
                                const SizedBox(height: 20),
                                const Text('كلمة السر',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20)),
                                const SizedBox(height: 10),
                                PasswordField(
                                    passwordContoller: controllerPassword),
                                const SizedBox(height: 185),
                                LoginButton(myform: form)
                              ])))
                ]))));
  }
}
