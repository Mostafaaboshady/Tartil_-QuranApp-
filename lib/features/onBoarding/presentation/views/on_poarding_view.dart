import 'package:flutter/material.dart';
import 'package:hidaya/features/onBoarding/presentation/views/widgets/onbording_screen_body.dart';

class OnPoardingView extends StatelessWidget {
  const OnPoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: OnbordingScreenBody()),
    );
  }
}
