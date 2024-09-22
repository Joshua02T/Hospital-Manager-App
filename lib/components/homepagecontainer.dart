import 'package:fadi_hosbital/core/consts.dart';
import 'package:fadi_hosbital/view/edituser.dart';
import 'package:flutter/material.dart';

class HomePageContainer extends StatefulWidget {
  final String name;
  final String job;
  const HomePageContainer({super.key, required this.name, required this.job});

  @override
  State<HomePageContainer> createState() => _HomePageContainerState();
}

class _HomePageContainerState extends State<HomePageContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          decoration: BoxDecoration(
              color: containerhomepagecolor,
              borderRadius: BorderRadius.circular(10)),
          height: 50,
          width: double.infinity,
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.name,
                        style: const TextStyle(color: fontcolor, fontSize: 16)),
                    Text(widget.job,
                        style: const TextStyle(color: fontcolor, fontSize: 16)),
                    Row(children: [
                      MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const EditUser(
                                      oldUserName: 'Fadi',
                                      oldEmail: '1@gmail.com',
                                      oldPassword: '12345678'))));
                        },
                        minWidth: 50,
                        textColor: fontcolor,
                        color: lightGreen,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: const Text('تعديل'),
                      ),
                      const SizedBox(width: 10),
                      MaterialButton(
                          onPressed: () {},
                          minWidth: 50,
                          textColor: fontcolor,
                          color: red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text('حذف'))
                    ]),
                  ]))),
      const SizedBox(height: 10)
    ]);
  }
}
