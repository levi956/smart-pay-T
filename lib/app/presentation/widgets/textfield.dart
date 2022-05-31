import 'package:flutter/material.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class CustomTextField extends StatelessWidget {
  final String? label;
  final Widget? iconSuffix;
  final Widget? iconLabel;
  final bool isHidden;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;

  const CustomTextField(
      {Key? key,
      this.label,
      required this.isHidden,
      this.iconLabel,
      this.keyboardType,
      this.onChanged,
      this.iconSuffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 56.31,
        width: double.maxFinite,
        margin: const EdgeInsets.all(10),
        child: TextField(
          onChanged: onChanged,
          autocorrect: false,
          obscureText: isHidden,
          cursorColor: primaryDarkBlue,
          style: const TextStyle(fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.never,
            fillColor: greyWhitish,
            filled: true,
            focusColor: greyWhitish,
            prefixIcon: iconLabel,
            suffixIcon: iconSuffix,
            labelText: label,
            labelStyle: const TextStyle(fontWeight: FontWeight.w400),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: primaryOrange),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: greyWhitish),
            ),
            errorBorder: OutlineInputBorder(
              gapPadding: 2,
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: primaryOrange),
            ),
          ),
        ),
      ),
    );
  }
}
