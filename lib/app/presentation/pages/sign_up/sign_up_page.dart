import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/helpers/auth_provider.dart';
import 'package:smart_pay/app/presentation/helpers/custom_divider.dart';
import 'package:smart_pay/app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:smart_pay/app/presentation/widgets/back_button.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';
import 'package:smart_pay/app/presentation/widgets/textfield.dart';
import 'package:smart_pay/core/utils/navigation/navigation.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email = '';
  String fullName = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //back button
              const CustomBackButton(),

              const SizedBox(height: 40),

              // welcome to smart pay text
              Row(
                children: [
                  Text(
                    'Create a ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: primaryDarkBlue,
                    ),
                  ),
                  Text(
                    'Smartpay',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: primaryOrange,
                    ),
                  ),
                ],
              ),
              Text(
                'account ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: primaryDarkBlue,
                ),
              ),

              const SizedBox(height: 20),

              // text field

              CustomTextField(
                isHidden: false,
                label: 'Full name',
                keyboardType: TextInputType.name,
                onChanged: (v) {
                  setState(() {
                    fullName = v.trim();
                  });
                },
              ),
              CustomTextField(
                isHidden: false,
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                onChanged: (v) {
                  setState(() {
                    email = v.trim();
                  });
                },
              ),
              CustomTextField(
                isHidden: true,
                label: 'Password',
                keyboardType: TextInputType.visiblePassword,
                onChanged: (v) {
                  setState(() {
                    password = v.trim();
                  });
                },
              ),

              const SizedBox(height: 30),

              //button
              CustomButton(
                text: 'Sign Up',
                onPressed: () {},
              ),

              const SizedBox(height: 30),

              // or
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customDivider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'OR',
                      style: TextStyle(fontSize: 14, color: primaryTextGrey),
                    ),
                  ),
                  customDivider()
                ],
              ),

              const SizedBox(height: 10),

              //oAuthProvider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  oAuthProvider(logoPath: 'assets/images/google.png'),
                  oAuthProvider(logoPath: 'assets/images/apple.png')
                ],
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: primaryWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyle(
                      color: primaryTextGrey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    pushReplacementTo(context, const SignIn());
                  },
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: primaryOrange,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),

            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
