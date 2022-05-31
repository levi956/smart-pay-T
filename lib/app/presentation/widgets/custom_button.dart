import 'package:flutter/material.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final Color? buttonTextColor;
  final bool Function()? validator;

  const CustomButton(
      {required this.text,
      required this.onPressed,
      this.buttonTextColor,
      this.validator,
      Key? key})
      : super(key: key);

  final double borderRadius = 16;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: (validator == null ? true : validator!())
            ? primaryDarkBlue
            : primaryDarkBlue.withOpacity(0.7),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          alignment: Alignment.center,
          padding: MaterialStateProperty.all(
            const EdgeInsets.only(top: 15, bottom: 15),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
        onPressed: (validator == null ? true : validator!()) ? onPressed : null,
        child: Text(
          text,
          style: TextStyle(
              color: buttonTextColor,
              fontSize: 16,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
