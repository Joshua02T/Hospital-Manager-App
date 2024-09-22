import 'package:flutter/material.dart';
import 'package:fadi_hosbital/core/consts.dart';

class UserNameField extends StatelessWidget {
  final TextEditingController contollerUsername;
  const UserNameField({super.key, required this.contollerUsername});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextFormField(
        keyboardType: TextInputType.name,
        controller: contollerUsername,
        style: const TextStyle(color: fontcolor),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (val) => val!.isEmpty || val.length < 3
            ? "أدخل اسم يحوي اكثر من ثلاث حروف"
            : null,
        decoration: const InputDecoration(
            hintText: 'username',
            hintStyle:
                TextStyle(color: fieldtextcolor, fontWeight: FontWeight.w100),
            filled: true,
            fillColor: superindigo,
            errorStyle: TextStyle(color: red),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}
