import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/widgets/back_button.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class EmailVerify extends StatefulWidget {
  const EmailVerify({Key? key}) : super(key: key);

  @override
  State<EmailVerify> createState() => _EmailVerifyState();
}

class _EmailVerifyState extends State<EmailVerify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 40,
          left: 20,
          right: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // back button
            const CustomBackButton(),

            const SizedBox(height: 40),

            // verify text
            Text(
              'Verify it\'s you',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: primaryDarkBlue,
              ),
            ),

            const SizedBox(height: 15),
            //

            Text(
              'We sent a code to {email}. Enter it here to verify your identity',
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: primaryTextGrey,
              ),
            ),

            //
            // custom pin code input goes here

            // resend button
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Resend code',
                  style: TextStyle(
                      color: primaryOrange,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),

            //
            CustomButton(
              buttonTextColor: primaryWhite,
              text: 'Confirm',
              onPressed: () {},
            ),

            // custom pin code keypad goes here
          ],
        ),
      ),
    );
  }
}
