import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
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
        margin: const EdgeInsets.only(top: 10, bottom: 10),
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

class CustomInputOtpField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const CustomInputOtpField({this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      cursorColor: Colors.transparent,
      keyboardType: TextInputType.number,
      appContext: context,
      length: 5,
      obscureText: false,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        activeColor: primaryOrange,
        selectedFillColor: Colors.transparent,
        selectedColor: primaryOrange,
        inactiveColor: greyWhitish,
        inactiveFillColor: greyWhitish,
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(15),
        fieldHeight: 56,
        fieldWidth: 56,
        activeFillColor: Colors.white,
      ),
      enableActiveFill: true,
      onChanged: onChanged!,
    );
  }
}

class CustomInputPinField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const CustomInputPinField({this.onChanged, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      cursorColor: Colors.transparent,
      keyboardType: TextInputType.number,
      appContext: context,
      length: 5,
      obscureText: true,
      animationType: AnimationType.none,
      pinTheme: PinTheme(
        activeColor: primaryOrange,
        selectedFillColor: Colors.transparent,
        selectedColor: primaryOrange,
        inactiveColor: greyWhitish,
        inactiveFillColor: greyWhitish,
        fieldHeight: 56,
        fieldWidth: 56,
        activeFillColor: Colors.white,
      ),
      enableActiveFill: true,
      onChanged: onChanged!,
    );
  }
}
