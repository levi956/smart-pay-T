import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';
import 'package:smart_pay/app/presentation/widgets/textfield.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

import '../../widgets/back_button.dart';

class SetPin extends StatefulWidget {
  const SetPin({Key? key}) : super(key: key);

  @override
  State<SetPin> createState() => _SetPinState();
}

class _SetPinState extends State<SetPin> {
  String pin = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // back button

            const CustomBackButton(),

            const SizedBox(height: 40),

            // verify text
            Text(
              'Set your PIN code',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: primaryDarkBlue,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'We use state-of-the-art security measure to protect your information at all times',
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: primaryTextGrey,
              ),
            ),

            const SizedBox(height: 20),

            CustomInputPinField(
              onChanged: (v) {
                pin = v;
              },
            ),

            const Spacer(),

            CustomButton(
              buttonTextColor: primaryWhite,
              text: 'Create Pin',
              onPressed: () {},
              validator: () {
                return pin != '';
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
