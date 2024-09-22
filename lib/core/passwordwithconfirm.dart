import 'package:flutter/material.dart';
import 'package:fadi_hosbital/core/consts.dart';

class PassWithConfrim extends StatefulWidget {
  final Color color;
  final Color textcolor;
  final TextEditingController contollerPassword;
  const PassWithConfrim(
      {super.key,
      required this.color,
      required this.textcolor,
      required this.contollerPassword});

  @override
  State<PassWithConfrim> createState() => _PassWithConfrimState();
}

class _PassWithConfrimState extends State<PassWithConfrim> {
  String? password;
  late bool passwordVisible1;
  late bool passwordVisible2;
  @override
  void initState() {
    super.initState();
    passwordVisible1 = false;
    passwordVisible2 = false;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('كلمة السر',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: widget.textcolor)),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.contollerPassword,
            style: const TextStyle(color: fontcolor),
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onSaved: (newValue) {
              password = newValue;
            },
            validator: (value) {
              if (value!.isEmpty || value.length <= 7) {
                return 'كلمة السر يجب أن تكون على الأقل 8 رموز';
              }
              return null;
            },
            obscureText: !passwordVisible1,
            decoration: InputDecoration(
                errorStyle: const TextStyle(color: red),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible1 = !passwordVisible1;
                      });
                    },
                    icon: passwordVisible1
                        ? const Icon(Icons.visibility, color: lightGreen)
                        : const Icon(Icons.visibility_off)),
                hintText: 'Password',
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400, color: fieldtextcolor),
                filled: true,
                fillColor: widget.color,
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
          const SizedBox(height: 20),
          Text('تأكيد كلمة السر',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: widget.textcolor)),
          const SizedBox(height: 10),
          TextFormField(
            controller: widget.contollerPassword,
            style: const TextStyle(color: fontcolor),
            validator: (value) {
              if (password != value) {
                return 'كلمة السر غير متطابقة';
              }
              return null;
            },
            obscureText: !passwordVisible2,
            decoration: InputDecoration(
                errorStyle: const TextStyle(color: red),
                suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        passwordVisible2 = !passwordVisible2;
                      });
                    },
                    icon: passwordVisible2
                        ? const Icon(Icons.visibility, color: lightGreen)
                        : const Icon(
                            Icons.visibility_off,
                          )),
                hintText: 'Re-enter your password',
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400, color: fieldtextcolor),
                filled: true,
                fillColor: widget.color,
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
          )
        ],
      ),
    );
  }
}
