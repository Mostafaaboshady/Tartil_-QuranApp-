import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/widgets/custom_button.dart';
import 'package:hidaya/core/utils/widgets/custom_text_filed.dart';

class ProfileBody
 extends StatelessWidget {
  const ProfileBody
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 330,
              decoration: BoxDecoration(
                color:  Color(0xFF2ea585),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 90),


                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/images/imagess.png'),
                    ),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            top: 250,
            left: 20,
            right: 20,
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 30),

                    Text(
                      'الاسم بالكامل',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'مصطفي أبوشادي',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'البريد الإلكتروني',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'aboshadymostafa277@gmail.com',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'رقم الجوال',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '01012494416',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      'المؤهل',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      ' بكالوريوس علوم وتكنولوجيا المعلومات',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 20),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}








