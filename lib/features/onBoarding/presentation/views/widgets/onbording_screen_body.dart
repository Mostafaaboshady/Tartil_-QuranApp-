import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

import 'package:hidaya/features/home/presentation/views/home.dart';

class OnbordingScreenBody extends StatelessWidget {
  double width(context) => MediaQuery.of(context).size.width;
  double height(context) => MediaQuery.of(context).size.height;
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: GlobalKey<NavigatorState>(),
      home: OnBoardingSlider(
        addController: true,
        imageVerticalOffset: 60,
        imageHorizontalOffset: 50,
        addButton: true,
        controllerColor: Color(0xFF2ea585),
        pageBackgroundColor: Colors.white,
        headerBackgroundColor: Colors.white,
        finishButtonText: 'متابعة',
        onFinish: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) =>  Home()));
          // GoRouter.of(context).push(AppRouter.KLogin);
        },
        finishButtonStyle: const FinishButtonStyle(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          backgroundColor: Colors.black38,
        ),
        skipTextButton: const Text(
          'Skip',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        background: [
          Image.asset(
            'assets/images/cn1.jpg',
            fit: BoxFit.cover,
            height: 360,
            width: 320,
          ),

          Image.asset(
            'assets/images/cors2.png',
            fit: BoxFit.cover,
            height: 360,
            width: 320,
          ),
          Image.asset(
            'assets/images/cn3.jpg',
            fit: BoxFit.cover,
            height: 360,
            width: 320,
          ),
      ],
        totalPage: 3,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 400,
                ),
                Text(
                  'مرحباً!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'ابدأ رحلتك في حفظ القرآن بسهولة وبالوتيرة التي تناسبك',
                    style: TextStyle(color: Color(0xFF2ea585), fontSize: 20 ,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40 ,vertical: 60),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 400,
                ),

                Text(
                  'خطط مخصصة',
                  style: TextStyle(color: Colors.black, fontSize: 25 ,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    'ضع أهدافك الخاصة وتلقَّ تذكيرات مخصصة لتبقى على المسار',
                    style: TextStyle(
                        color: Color(0xFF2ea585),
                        fontSize: 20 ,fontWeight: FontWeight.bold,
                        fontFamily: 'ShadowsIntoLight'),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 40 ,vertical: 60),
            child: const Column(
              children: <Widget>[
                SizedBox(
                  height: 400,
                ),
                Text(
                  'حافظ على التحفيز',
                  style: TextStyle(color: Colors.black, fontSize: 25 ,fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 0),
                  child: Text(
                    ' قم بحفظ القرآن واحفظ التحفيزات الخاصة بك وابقى على المسار الصحيح',
                    style: TextStyle(color: Color(0xFF2ea585), fontSize: 20 ,fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
