import 'package:fadi_hosbital/components/homepagecontainer.dart';
import 'package:fadi_hosbital/components/usersdrawer.dart';
import 'package:fadi_hosbital/core/background.dart';
import 'package:fadi_hosbital/core/consts.dart';
import 'package:fadi_hosbital/core/customSearch.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: const UsersDrawer(),
            key: scaffoldkey,
            body: Container(
                decoration: backGroundGradient(),
                child: ListView(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      scaffoldkey.currentState!.openDrawer();
                                    },
                                    icon: const Icon(Icons.menu),
                                    iconSize: 25,
                                    color: fontcolor),
                                const Text(
                                  " حسابات المستخدمين",
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: fontcolor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Text(
                                'يمكنك إضافة المستخدمين و إزالتهم من هذه الواجهة',
                                style:
                                    TextStyle(color: fontcolor, fontSize: 17)),
                            const SizedBox(height: 15),
                            Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('البحث عن مستخدم عن طريق الاسم :',
                                      style: TextStyle(
                                          color: fontcolor, fontSize: 17)),
                                  Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                          color: lightGreen,
                                          borderRadius:
                                              BorderRadius.circular(60)),
                                      child: IconButton(
                                          onPressed: () {
                                            showSearch(
                                                context: context,
                                                delegate: CustomSearch());
                                          },
                                          icon: const Icon(Icons.search,
                                              color: fontcolor, size: 25)))
                                ]),
                            const SizedBox(height: 40),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, 'addinguser');
                              },
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: containerhomepagecolor,
                                      borderRadius: BorderRadius.circular(10)),
                                  height: 50,
                                  width: double.infinity,
                                  child: (const Icon(Icons.add,
                                      color: fontcolor, size: 40))),
                            ),
                            const SizedBox(height: 10),
                            const HomePageContainer(
                                name: 'Fadi Noumeh', job: 'admin'),
                            const HomePageContainer(
                                name: 'Rita Jacob ', job: 'admin'),
                            const HomePageContainer(
                                name: 'Joshua Tarsisi', job: 'admin'),
                          ]))
                ]))));
  }
}
