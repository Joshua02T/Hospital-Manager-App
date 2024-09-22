import 'package:fadi_hosbital/core/consts.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({super.key});

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  String job = 'receptionist';
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text(
        'receptionist',
        style: TextStyle(color: fontcolor, fontSize: 17),
      ),
      Radio(
          activeColor: highGreen,
          value: 'receptionist',
          groupValue: job,
          onChanged: (val) {
            setState(() {
              job = val!;
            });
          }),
      const SizedBox(width: 20),
      const Text(
        'nurse',
        style: TextStyle(color: fontcolor, fontSize: 17),
      ),
      Radio(
          activeColor: highGreen,
          value: 'nurse',
          groupValue: job,
          onChanged: (val) {
            setState(() {
              job = val!;
            });
          }),
      const SizedBox(width: 20),
      const Text(
        'doctor',
        style: TextStyle(color: fontcolor, fontSize: 17),
      ),
      Radio(
          activeColor: highGreen,
          value: 'doctor',
          groupValue: job,
          onChanged: (val) {
            setState(() {
              job = val!;
            });
          }),
    ]);
  }
}
