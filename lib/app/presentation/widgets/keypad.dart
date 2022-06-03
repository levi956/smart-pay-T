import 'package:flutter/material.dart';
import 'package:numeric_keyboard/numeric_keyboard.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class KeypadNumeric extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final Function()? rightButton;

  const KeypadNumeric({Key? key, this.onChanged, this.rightButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NumericKeyboard(
      textColor: primaryDarkBlue,
      onKeyboardTap: onChanged!,
      rightButtonFn: rightButton,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      rightIcon: const Icon(
        Icons.backspace_outlined,
        size: 25,
      ),
    );
  }
}
