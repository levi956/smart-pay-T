import 'package:flutter/material.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

InkWell oAuthProvider({String? logoPath, void Function()? onTap}) {
  return InkWell(
    child: Container(
      height: 56,
      width: 155,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: grey2),
          bottom: BorderSide(color: grey2),
          left: BorderSide(color: grey2),
          right: BorderSide(color: grey2),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(logoPath!),
      ),
    ),
  );
}
