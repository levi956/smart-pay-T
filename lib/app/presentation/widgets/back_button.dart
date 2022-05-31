import 'package:flutter/material.dart';
import 'package:smart_pay/core/utils/navigation/navigation.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => pop(context),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: grey2),
            bottom: BorderSide(color: grey2),
            left: BorderSide(color: grey2),
            right: BorderSide(color: grey2),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,
          size: 18,
        ),
      ),
    );
  }
}
