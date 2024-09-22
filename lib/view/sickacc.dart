import 'package:fadi_hosbital/components/sickdetails.dart';
import 'package:fadi_hosbital/components/sickdrawer.dart';
import 'package:fadi_hosbital/core/background.dart';
import 'package:fadi_hosbital/core/consts.dart';
import 'package:fadi_hosbital/core/customsearch.dart';
import 'package:flutter/material.dart';

class SickAccount extends StatefulWidget {
  const SickAccount({super.key});

  @override
  State<SickAccount> createState() => _SickAccountsState();
}

class _SickAccountsState extends State<SickAccount> {
  GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
            drawer: const SickDrawer(),
            key: scaffoldkey,
            body: Container(
                decoration: backGroundGradient(),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            IconButton(
                                onPressed: () {
                                  scaffoldkey.currentState!.openDrawer();
                                },
                                icon: const Icon(Icons.menu),
                                iconSize: 25,
                                color: fontcolor),
                            const Text("  المرضى اللذين زاروا المشفى",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: fontcolor,
                                    fontWeight: FontWeight.bold))
                          ]),
                          const SizedBox(height: 20),
                          const Text(
                              'يمكنك تصفح كل المرضى مع زياراتهم وكل بياناتهم المسجلة :',
                              style: TextStyle(color: fontcolor, fontSize: 17)),
                          const SizedBox(height: 10),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text('للبحث عن مريض عن طريق الاسم :',
                                    style: TextStyle(
                                        color: fontcolor, fontSize: 17)),
                                InkWell(
                                    onTap: () {
                                      showSearch(
                                          context: context,
                                          delegate: CustomSearch());
                                    },
                                    child: Container(
                                        width: 110,
                                        height: 40,
                                        decoration: BoxDecoration(
                                            color: superindigo,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Row(children: [
                                          Icon(Icons.search,
                                              color: highGreen, size: 25),
                                          SizedBox(width: 5),
                                          Text(
                                            'الاسم',
                                            style: TextStyle(
                                                color: fieldtextcolor),
                                          )
                                        ])))
                              ]),
                          const SizedBox(height: 10),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const SickDetails()))),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: superindigo,
                                  borderRadius: BorderRadius.circular(10)),
                              width: double.infinity,
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  const Text(
                                    'يوشع ترسيسي',
                                    style: TextStyle(color: fontcolor),
                                  ),
                                  const Text(
                                    'ذكر',
                                    style: TextStyle(color: fontcolor),
                                  ),
                                  const Text(
                                    '21',
                                    style: TextStyle(color: fontcolor),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.remove,
                                        color: fontcolor,
                                      ))
                                ],
                              ),
                            ),
                          )
                        ]),
                  )
                ]))));
  }
}
