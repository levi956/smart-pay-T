import 'package:flutter/material.dart';
import 'package:smart_pay/app/presentation/pages/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Smart Pay',
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    );
  }
}
