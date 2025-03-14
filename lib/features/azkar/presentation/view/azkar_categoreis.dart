import 'package:flutter/material.dart';
import 'package:hidaya/features/azkar/presentation/view/Azkar_Page.dart';
import 'package:hidaya/features/azkar/presentation/view/azkar2_page.dart';
import 'package:hidaya/features/azkar/presentation/view/azkar3_page.dart';
import 'package:hidaya/features/azkar/presentation/view/widgets/azkar4_page.dart';
import 'package:hidaya/features/azkar/presentation/view/widgets/build_azkar_button.dart';

class AzkarCategoreis extends StatelessWidget {
  const AzkarCategoreis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onBoarding1.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 60,),

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                IconButton(onPressed:  (){
                  Navigator.pop(context);

                }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
                SizedBox(width: 120,),

                Text('اذكار',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
              ],
            ),
            SizedBox(height: 150,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildAzkarButton(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AzkarPage2()));
                }, icon: Icons.nightlight_outlined, label: 'أذكار المساء',),
                BuildAzkarButton(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AzkarPage()));

                }, icon: Icons.wb_sunny_outlined, label: 'أذكار الصباح',),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BuildAzkarButton(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AzkarPage3()));
                }, icon: Icons.bed, label: 'أذكار النوم',),
                BuildAzkarButton(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  AzkarPage4()));
                }, icon: Icons.sunny_snowing, label: 'أذكار الاستيقاظ',),
              ],
            )
          ],
        ),
      ),
    );
  }
}
