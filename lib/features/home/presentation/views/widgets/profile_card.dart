import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Top Image Section
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
                child: Container(
                  color: Colors.brown,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(
                          'assets/images/shaa.png'), // Replace with your image asset
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Name and Title
              Container(
                margin: const EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                child: const Text(
                  'محمد طاهر',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 10),
                alignment: Alignment.centerRight,
                child: const Text(
                  'حفظ',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height: 8),

              // Reviews and Rating
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 20),
                        SizedBox(width: 4),
                        Text(
                          '4.6',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Reviews Text
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: const Text(
                      'المراجعات',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
