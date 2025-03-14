import 'package:flutter/material.dart';
import 'package:hidaya/features/onBoarding/presentation/views/on_poarding_view.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  double width(context) => MediaQuery.of(context).size.width;
  double height(context) => MediaQuery.of(context).size.height;

  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  Animation<Color?>? colorAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200));

    fadingAnimation = Tween<double>(begin: 0.2, end: 1).animate(animationController!);

    colorAnimation = ColorTween(begin: Colors.white54, end: Colors.blueAccent)
        .animate(animationController!);

    animationController!.repeat(reverse: true);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const OnPoardingView()));
    });
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: width(context),
        height: height(context),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/mornimg.png'),
                fit: BoxFit.fill)),
        child: Column(
          children: [
            SizedBox(height: 130),
            AnimatedBuilder(
              animation: animationController!,
              builder: (context, child) {
                return Opacity(
                  opacity: fadingAnimation!.value,
                  child: Text(
                    'Tartila',
                    style: TextStyle(
                      color: colorAnimation!.value,
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Color(0xFF2ea585),
                          offset: const Offset(3, 3),
                          blurRadius: 6,
                        ),
                        Shadow(
                          color: Color(0xff0d473c),
                          offset: const Offset(3, 3),
                          blurRadius: 6,
                        ),
                        Shadow(
                          color: Color(0xff16676a),
                          offset: const Offset(3, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
