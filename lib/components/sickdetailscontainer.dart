import 'package:fadi_hosbital/core/consts.dart';
import 'package:flutter/material.dart';

class SickDetailsContainer extends StatelessWidget {
  final String keyy;
  final String valuee;

  const SickDetailsContainer(
      {super.key, required this.keyy, required this.valuee});

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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(keyy,
                          style:
                              const TextStyle(color: fontcolor, fontSize: 16)),
                      Text(valuee,
                          style:
                              const TextStyle(color: fontcolor, fontSize: 16)),
                    ]),
              ))),
      const SizedBox(height: 10)
    ]);
  }
}
