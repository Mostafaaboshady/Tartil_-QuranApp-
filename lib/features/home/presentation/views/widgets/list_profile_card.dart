import 'package:flutter/material.dart';
import 'package:hidaya/features/home/presentation/views/widgets/profile_card.dart';

class ListProfileCard extends StatelessWidget {
  const ListProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const ProfileCard();
        },
        itemCount: 10,
      ),
    );
  }
}
