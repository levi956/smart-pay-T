import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';

import '../../../../core/utils/style/color_constants.dart';

class SuccessAuth extends StatelessWidget {
  const SuccessAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            const SizedBox(height: 45),
            Image.asset(
              'assets/images/successIllustration.png',
              height: 217,
              width: 258.38,
            ),

            const SizedBox(height: 40),

            // greeting text
            Text(
              'Congratulations',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: primaryDarkBlue,
              ),
            ),

            const SizedBox(height: 15),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20.0),
              child: Text(
                'Hey {name}, your account has been successfully created 👋',
                textAlign: TextAlign.center,
                style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: primaryTextGrey,
                ),
              ),
            ),

            const Spacer(),

            CustomButton(
              text: 'Proceed to home',
              onPressed: () {},
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
