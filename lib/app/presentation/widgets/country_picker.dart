import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class CountryPicker extends StatelessWidget {
  final Function(CountryCode)? onChanged;
  const CountryPicker({Key? key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: greyWhitish,
        borderRadius: BorderRadius.circular(16),
      ),
      child: CountryCodePicker(
        onChanged: onChanged!,
        initialSelection: 'NG',
        favorite: const ['+234', 'NG'],
        padding: const EdgeInsets.all(5),
        flagWidth: 32,
        hideMainText: false,
        showDropDownButton: true,
        alignLeft: true,
      ),
    );
  }
}
