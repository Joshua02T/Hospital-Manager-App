import 'package:flutter/material.dart';
import 'package:fadi_hosbital/core/consts.dart';

class EmailField extends StatelessWidget {
  final Color color;
  final TextEditingController contollerEmail;
  const EmailField(
      {super.key, required this.color, required this.contollerEmail});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        controller: contollerEmail,
        style: const TextStyle(color: fontcolor),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (val) =>
            val!.isEmpty || !val.contains("@gmail.com") || val.length <= 10
                ? "أدخل ايميل صحيح"
                : null,
        decoration: InputDecoration(
            hintText: '***@gmail.com',
            hintStyle: const TextStyle(
                color: fieldtextcolor, fontWeight: FontWeight.w100),
            filled: true,
            fillColor: color,
            errorStyle: const TextStyle(color: red),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            focusedErrorBorder: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}
