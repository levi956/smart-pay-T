import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/helpers/auth_provider_button.dart';
import 'package:smart_pay/app/presentation/helpers/custom_divider.dart';
import 'package:smart_pay/core/utils/functions/validators.dart';
import 'package:smart_pay/app/presentation/pages/authentication/sign_up_page.dart';
import 'package:smart_pay/app/presentation/widgets/back_button.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';
import 'package:smart_pay/app/presentation/widgets/textfield.dart';
import 'package:smart_pay/core/utils/navigation/navigation.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryWhite,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // back button

              const CustomBackButton(),

              const SizedBox(height: 40),

              // greeting text
              Text(
                'Hi There! 👋',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: primaryDarkBlue,
                ),
              ),
              const SizedBox(height: 15),

              // welcome back text
              Text(
                'Welcome back, Sign in to your account',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                  color: primaryTextGrey,
                ),
              ),

              const SizedBox(height: 30),

              // text field
              CustomTextField(
                isHidden: false,
                keyboardType: TextInputType.emailAddress,
                label: 'Email',
                onChanged: (v) {
                  setState(() {
                    email = v.trim();
                  });
                },
              ),

              CustomTextField(
                isHidden: true,
                label: 'Password',
                onChanged: (v) {
                  setState(() {
                    password = v.trim();
                  });
                },
              ),

              // forget password
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                      color: primaryOrange,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 20),

              // sign in button
              CustomButton(
                buttonTextColor: primaryWhite,
                text: 'Sign In',
                onPressed: () {},
                validator: () {
                  return isValidEmailAddress(email) && password.isNotEmpty;
                },
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
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    oAuthProvider(logoPath: 'assets/images/google.png'),
                    oAuthProvider(logoPath: 'assets/images/apple.png')
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.only(bottom: 10),
        color: primaryWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // sign up
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      color: primaryTextGrey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400),
                ),
                TextButton(
                  onPressed: () {
                    pushReplacementTo(context, const SignUp());
                  },
                  child: Text(
                    'Sign Up',
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
