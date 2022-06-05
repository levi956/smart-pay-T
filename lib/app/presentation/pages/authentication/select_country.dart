import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/pages/authentication/success_auth.dart';
import 'package:smart_pay/app/presentation/widgets/country_picker.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';
import 'package:smart_pay/core/utils/navigation/navigation.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';
import 'package:smart_pay/core/utils/widgets/loader.dart';

import '../../../domain/register.dart';
import '../../../services/api/auth.dart';

import '../../../services/domain/service_response.dart';
import '../../widgets/back_button.dart';

class SelectCountry extends StatefulWidget {
  final RegisterModel? userCred;

  const SelectCountry({Key? key, this.userCred}) : super(key: key);

  @override
  State<SelectCountry> createState() => _SelectCountryState();
}

class _SelectCountryState extends State<SelectCountry> {
  String country = 'NG';
  Auth auth = Auth();
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
              'Country of Residence',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: primaryDarkBlue,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              'Please select the country you are a tax residence in',
              style: TextStyle(
                height: 1.5,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                color: primaryTextGrey,
              ),
            ),

            const SizedBox(height: 20),

            CountryPicker(
              onChanged: (c) {
                country = c.code.toString();
              },
            ),

            const Spacer(),

            CustomButton(
              text: 'Continue',
              onPressed: () {},
            ),

            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }

  // register here
  addCountryCred() async {
    showLoader(context);
    ServiceResponse _response = await auth.register(cred: {
      'full_name': widget.userCred!.fullName,
      'email': widget.userCred!.email,
      'country': country,
      'password': widget.userCred!.password,
      'device_name': 'web'
    });
    pop(context);
    if (_response.status) {
      print('here');
      // pushTo(context, SuccessAuth());
    } else {
      // show error prompt
      print('error');
    }
  }
}
