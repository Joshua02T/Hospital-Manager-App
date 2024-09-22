import 'package:fadi_hosbital/core/consts.dart';
import 'package:flutter/material.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: AlertDialog(
          shadowColor: highGreen,
          title: const Text("تسجيل خروج"),
          actionsAlignment: MainAxisAlignment.spaceAround,
          content: const Text("هل انت متأكد من تسجيل الخروج ؟"),
          actions: [
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    'login',
                    (route) => false,
                  );
                },
                color: superindigo,
                textColor: fontcolor,
                child: const Text('نعم')),
            MaterialButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(color: superindigo)),
                onPressed: () {
                  Navigator.pop(context);
                },
                textColor: fontcolor,
                child: const Text(
                  'إلغاء',
                  style: TextStyle(color: superindigo),
                ))
          ],
        ));
  }
}
