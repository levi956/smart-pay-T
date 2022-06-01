import 'package:flutter/material.dart';
import 'package:smart_pay/app/domain/onboarding_model.dart';
import 'package:smart_pay/app/presentation/pages/sign_in/sign_in_page.dart';
import 'package:smart_pay/app/presentation/widgets/custom_button.dart';
import 'package:smart_pay/core/utils/navigation/navigation.dart';
import 'package:smart_pay/core/utils/style/color_constants.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int _currentIndex = 0;

  PageController? _pageController;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryWhite,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, right: 15, left: 15),
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // skip button
              Row(
                children: [
                  const Spacer(),
                  TextButton(
                    onPressed: () => pushTo(context, const SignIn()),
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: primaryOrange,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // expanded for pageview
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: onboardContent.length,
                  itemBuilder: (_, index) {
                    return Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Image.asset(
                            onboardContent[index].imagePath!,
                            width: 292,
                            height: 241.56,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text(
                            onboardContent[index].title!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: primaryDarkBlue),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Text(
                            onboardContent[index].description!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                height: 1.7,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: primaryTextGrey),
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),

      //indicator and button
      bottomSheet: AnimatedContainer(
        color: primaryWhite,
        duration: const Duration(milliseconds: 4000),
        padding: const EdgeInsets.symmetric(horizontal: 80),
        height: 105,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardContent.length,
                (index) => buildDot(index, context),
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Get Started',
              onPressed: () => pushTo(context, const SignIn()),
            )
          ],
        ),
      ),
    );
  }

  // indicator
  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 7.2,
      width: _currentIndex == index ? 35 : 7,
      margin: const EdgeInsets.only(left: 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(70),
        color: _currentIndex == index ? primaryDarkBlue : grey2,
      ),
    );
  }
}
