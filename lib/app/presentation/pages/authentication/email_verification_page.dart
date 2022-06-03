import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/widgets/back_button.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';
import 'package:smart_pay/app/presentation/widgets/keypad.dart';
import 'package:smart_pay/app/presentation/widgets/textfield.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

import '../../../domain/user.dart';

class EmailVerify extends StatefulWidget {
  final String? tokenResponse;
  final User? user;
  const EmailVerify({Key? key, this.tokenResponse, this.user})
      : super(key: key);

  @override
  State<EmailVerify> createState() => _EmailVerifyState();
}

class _EmailVerifyState extends State<EmailVerify> {
  String token = '';

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
            const SizedBox(height: 20),

            // custom pin code input goes here
            CustomInputOtpField(
              onChanged: (v) {
                setState(() {
                  token = v;
                });
              },
            ),

            const SizedBox(height: 10),

            // resend button
            Center(
              child: TextButton(
                onPressed: () {
                  //
                },
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
              onPressed: () {
                print(token);
              },
              validator: () {
                return token != '';
              },
            ),

            // custom pin code keypad goes here
            // KeypadNumeric(
            //   onChanged: (v) {
            //     setState(() {
            //       token = token + v;
            //     });
            //   },
            //   rightButton: () {
            //     setState(() {
            //       token = token.substring(0, token.length - 1);
            //     });
            //   },
            // )
          ],
        ),
      ),
    );
  }

  // call verify token here
}
