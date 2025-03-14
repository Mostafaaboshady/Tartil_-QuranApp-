import 'package:flutter/material.dart';
import 'package:hidaya/features/home/data/models/ayas/ayas.dart';

class DetailsAyasBody extends StatefulWidget {
  const DetailsAyasBody({super.key});

  @override
  State<DetailsAyasBody> createState() => _DetailsAyasBodyState();
}

class _DetailsAyasBodyState extends State<DetailsAyasBody> {
  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Ayas;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 140.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                arguments.name!,
                style: const TextStyle(color: Colors.white, fontSize: 25 , fontWeight: FontWeight.bold),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF2ea585),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 20),

              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,),
                  child: Column(
                    children: [
                      Text(
                        '${arguments.ayahs![index].text}\t${'(${index.toInt()+ 1})' }',
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
              childCount: arguments.ayahs!.length,
            ),
          ),
        ],
      ),
    );
  }
}
