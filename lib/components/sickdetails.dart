import 'package:fadi_hosbital/components/sickdetailscontainer.dart';
import 'package:fadi_hosbital/components/sickdrawer.dart';
import 'package:fadi_hosbital/core/background.dart';
import 'package:fadi_hosbital/core/consts.dart';
import 'package:flutter/material.dart';

class SickDetails extends StatefulWidget {
  const SickDetails({super.key});

  @override
  State<SickDetails> createState() => _SickDetailsState();
}

GlobalKey<ScaffoldState> mykey = GlobalKey();

class _SickDetailsState extends State<SickDetails> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          drawer: const SickDrawer(),
          key: mykey,
          body: Container(
            decoration: backGroundGradient(),
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                mykey.currentState!.openDrawer();
                              },
                              icon: const Icon(
                                Icons.menu,
                                color: fontcolor,
                              )),
                          const Text(
                            'المريض يوشع ترسيسي',
                            style: TextStyle(color: fontcolor, fontSize: 25),
                          ),
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(Icons.arrow_forward,
                                  color: fontcolor, size: 30))
                        ]),
                    const SizedBox(height: 10),
                    const Column(children: [
                      SickDetailsContainer(keyy: 'ر.و', valuee: '04120086078'),
                      SickDetailsContainer(
                          keyy: 'الاسم', valuee: 'يوشع ترسيسي'),
                      SickDetailsContainer(keyy: 'الجنس', valuee: 'ذكر'),
                      SickDetailsContainer(keyy: 'العمر', valuee: '21'),
                      SickDetailsContainer(
                          keyy: 'العنوان', valuee: 'حمص - فيروزة'),
                      SickDetailsContainer(
                          keyy: 'رقم التواصل', valuee: '0994340513'),
                      SickDetailsContainer(keyy: 'زمرة الدم', valuee: 'A+')
                    ]),
                    const SizedBox(height: 30),
                    GridView.builder(
                      itemCount: sickdetailsbuttonslist.length,
                      itemBuilder: (context, index) => MaterialButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        onPressed: () {},
                        textColor: fontcolor,
                        color: const Color(0xFF13907f),
                        child: Text(
                          sickdetailsbuttonslist[index]['text'],
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisExtent: 50,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 15),
                    ),
                    const SizedBox(height: 15),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {},
                      textColor: fontcolor,
                      color: const Color(0xFF13907f),
                      child: Text(
                        'العمليات',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}
