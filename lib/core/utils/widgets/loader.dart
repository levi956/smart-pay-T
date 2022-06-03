import 'package:flutter/material.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

void showLoader(BuildContext context) {
  showDialog(
    // barrierDismissible: false,
    context: context,
    builder: (context) => Center(
      child: CircularProgressIndicator.adaptive(
        backgroundColor: primaryDarkBlue,
      ),
    ),
  );
}
