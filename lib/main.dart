import 'package:fadi_hosbital/auth/login.dart';
import 'package:fadi_hosbital/view/addinguser.dart';
import 'package:fadi_hosbital/view/homepage.dart';
import 'package:fadi_hosbital/view/sickacc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'homepage': (context) => const HomePage(),
          'login': (context) => const Login(),
          'sickaccount': (context) => const SickAccount(),
          'addinguser': (context) => const AddingUser(),
        },
        theme: ThemeData(useMaterial3: true, fontFamily: "Cairo"),
        debugShowCheckedModeBanner: false,
        home: const Login());
  }
}
