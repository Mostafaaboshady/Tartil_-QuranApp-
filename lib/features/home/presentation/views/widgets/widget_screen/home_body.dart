import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hidaya/features/home/presentation/views/widgets/buildNavigationButtons.dart';
import 'package:hidaya/features/home/presentation/views/widgets/follow_up.dart';
import 'package:hidaya/features/home/presentation/views/widgets/hadith_card.dart';
import 'package:hidaya/features/home/presentation/views/widgets/list_hadith_card.dart';
import 'package:hidaya/features/home/presentation/views/widgets/list_profile_card.dart';
import 'package:hidaya/features/home/presentation/views/widgets/profile_card.dart';
import 'package:hidaya/features/home/presentation/views/widgets/step_Icon.dart';
import 'package:hidaya/features/home/presentation/views/widgets/step_line.dart';
import 'package:hidaya/features/home/presentation/views/widgets/top_design.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const SliverToBoxAdapter(child: TopDesign()),
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
        ),
      ),
      SliverToBoxAdapter(
        child: Container(
          margin: EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              // Step 1
              StepIcon(
                icon: Icons.nights_stay,
                isActive: false,
              ),
              StepLine(),
              StepIcon(
                icon: Icons.nightlife,
                isActive: false,
              ),

              StepLine(),
              StepIcon(
                icon: Icons.wb_twighlight,
                isActive: true,
              ),
              StepLine(),
              StepIcon(
                icon: Icons.wb_sunny,
                isActive: true,
              ),
              StepLine(),
              StepIcon(
                icon: Icons.sunny,
                isActive: true,
              ),
            ],
          ),
        ),
      ),
      const SliverToBoxAdapter(child: SizedBox(height: 20)),
      const SliverToBoxAdapter(child: Buildnavigationbuttons()),
      const SliverToBoxAdapter(child: SizedBox(height: 20)),

      const SliverToBoxAdapter(child: FollowUp()),
      const SliverToBoxAdapter(child: SizedBox(height: 20)),

      SliverToBoxAdapter(child: HadithCard()),

      const SliverToBoxAdapter(child: SizedBox(height: 25)),
    ]);
  }
}
