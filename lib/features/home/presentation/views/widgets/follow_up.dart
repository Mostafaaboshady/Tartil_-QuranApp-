import 'package:flutter/material.dart';
import 'package:hidaya/features/azkar/presentation/view/azkar_categoreis.dart';
import 'package:hidaya/features/home/presentation/views/widgets/details_ayas_body.dart';

class FollowUp extends StatelessWidget {
  const FollowUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black,
          image: const DecorationImage(fit: BoxFit.fill,image: AssetImage('assets/images/mn.jpg'))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CircleAvatar(
            radius: 45,
            backgroundImage: AssetImage('assets/images/imagess.png'),
            backgroundColor: Colors.white,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                'عطر فمك بذكر الله',
                style: TextStyle(color: Colors.white , fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF2ea585),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const AzkarCategoreis()));
                },
                child: const Text(
                  'متابعة ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30,),
            ],
          ),
        ],
      ),
    );
  }
}
