import 'package:flutter/material.dart';

class HadithCard extends StatelessWidget {
  const HadithCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.bookmark, color:Color(0xFF2ea585)),
                      onPressed: () {
                        // Add bookmark functionality
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.share, color: Color(0xFF2ea585)),
                      onPressed: () {
                        // Add bookmark functionality
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.centerRight,
                      child: const Text(
                        'تذكير اليوم',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2ea585),
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(Icons.settings)
                  ],
                )
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              " إِنَّ ٱللَّهَ وَمَلَـٰٓئِكَتَهُۥ يُصَلُّونَ عَلَى ٱلنَّبِىِّ ۚ يَـٰٓأَيُّهَا ٱلَّذِينَ ءَامَنُوا۟ صَلُّوا۟ عَلَيْهِۦ وَسَلِّمُوا۟ تَسْلِيمًۭا",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}