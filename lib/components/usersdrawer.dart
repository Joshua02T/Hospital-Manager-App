import 'package:fadi_hosbital/core/alertdialog.dart';
import 'package:fadi_hosbital/core/consts.dart';
import 'package:flutter/material.dart';

class UsersDrawer extends StatelessWidget {
  const UsersDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: superindigo,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 40, 5, 20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    Row(children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(60),
                          child: Image.asset('images/fadi.jpg',
                              width: 75, height: 75, fit: BoxFit.cover)),
                      const Expanded(
                          child: ListTile(
                              title: Text('فادي نعمة',
                                  style: TextStyle(
                                      fontSize: 22, color: fontcolor))))
                    ]),
                    const Divider(height: 50),
                    ListTile(
                        tileColor: listtilecolor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onTap: () {
                          Navigator.pushReplacementNamed(context, 'homepage');
                        },
                        leading: const Icon(
                          Icons.person,
                          color: highGreen,
                        ),
                        title: const Text('الحسابات',
                            style: TextStyle(color: fontcolor, fontSize: 20))),
                    const SizedBox(height: 10),
                    ListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, 'sickaccount');
                        },
                        leading: const Icon(Icons.person, color: highGreen),
                        title: const Text('المرضى',
                            style: TextStyle(color: fontcolor, fontSize: 20)))
                  ]),
                  MaterialButton(
                      color: lightGreen,
                      height: 40,
                      minWidth: 250,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => const CustomAlertDialog());
                      },
                      child: const Text('تسجيل خروج',
                          style: TextStyle(color: fontcolor, fontSize: 18)))
                ])));
  }
}
