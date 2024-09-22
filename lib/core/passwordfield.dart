import 'package:flutter/material.dart';
import 'package:fadi_hosbital/core/consts.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passwordContoller;
  const PasswordField({super.key, required this.passwordContoller});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  late bool passwordVisible;

  @override
  void initState() {
    super.initState();
    passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: TextFormField(
          controller: widget.passwordContoller,
          style: const TextStyle(color: fontcolor),
          validator: (value) {
            if (value!.isEmpty || value.length <= 7) {
              return 'كلمة السر يجب أن تكون على الأقل 8 رموز';
            }
            return null;
          },
          obscureText: !passwordVisible,
          decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    passwordVisible = !passwordVisible;
                  });
                },
                icon: passwordVisible
                    ? const Icon(Icons.visibility, color: lightGreen)
                    : const Icon(Icons.visibility_off)),
            hintText: 'Password',
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w100, color: fieldtextcolor),
            filled: true,
            errorStyle: const TextStyle(color: red),
            fillColor: indigo,
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
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )),
    );
  }
}
