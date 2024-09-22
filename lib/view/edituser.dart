import 'package:fadi_hosbital/components/customradio.dart';
import 'package:fadi_hosbital/core/background.dart';
import 'package:fadi_hosbital/core/consts.dart';
import 'package:fadi_hosbital/core/emaillfield.dart';
import 'package:fadi_hosbital/core/passwordwithconfirm.dart';
import 'package:fadi_hosbital/core/usernamefield.dart';
import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  final String oldUserName;
  final String oldEmail;
  final String oldPassword;
  const EditUser(
      {super.key,
      required this.oldUserName,
      required this.oldEmail,
      required this.oldPassword});

  @override
  State<EditUser> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<EditUser> {
  TextEditingController usernameContoller = TextEditingController();
  TextEditingController emailContoller = TextEditingController();
  TextEditingController passwordContoller = TextEditingController();

  @override
  void initState() {
    super.initState();
    usernameContoller.text = widget.oldUserName;
    emailContoller.text = widget.oldEmail;
    passwordContoller.text = widget.oldPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            body: Container(
                decoration: backGroundGradient(),
                child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: ListView(children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              " تعديل مستخدم",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: fontcolor,
                                  fontWeight: FontWeight.w400),
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.arrow_forward,
                                    color: fontcolor))
                          ]),
                      const SizedBox(height: 20),
                      const Text('اسم المستخدم',
                          style:
                              TextStyle(color: fieldtextcolor, fontSize: 20)),
                      const SizedBox(height: 10),
                      Form(
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            UserNameField(contollerUsername: usernameContoller),
                            const SizedBox(height: 20),
                            const Text("الوظيفة",
                                style: TextStyle(
                                    color: fieldtextcolor, fontSize: 20)),
                            SizedBox(
                                height: 50,
                                width: double.infinity,
                                child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: const [
                                      Row(children: [CustomRadio()])
                                    ])),
                            const Text('الحساب',
                                style: TextStyle(
                                    color: fieldtextcolor, fontSize: 20)),
                            const SizedBox(height: 10),
                            EmailField(
                                color: superindigo,
                                contollerEmail: emailContoller),
                            const SizedBox(height: 10),
                            PassWithConfrim(
                                color: superindigo,
                                textcolor: fieldtextcolor,
                                contollerPassword: passwordContoller),
                            const SizedBox(height: 50),
                            Center(
                              child: MaterialButton(
                                  color: lightGreen,
                                  height: 50,
                                  minWidth: 200,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  onPressed: () {},
                                  child: const Text('إضافة',
                                      style: TextStyle(
                                          color: fontcolor, fontSize: 18))),
                            )
                          ]))
                    ])))));
  }
}
