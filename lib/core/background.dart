import 'package:fadi_hosbital/core/consts.dart';
import 'package:flutter/material.dart';

BoxDecoration backGroundGradient() {
  return const BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [indigo, highGreen]));
}
