import 'package:flutter/material.dart';
import 'package:hidaya/features/home/presentation/views/widgets/hadith_card.dart';

class ListHadithCard extends StatelessWidget {
  const ListHadithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return HadithCard();
        },
        itemCount: 5,
      ),
    );
  }
}
