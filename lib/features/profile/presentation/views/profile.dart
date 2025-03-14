import 'package:flutter/material.dart';
import 'package:hidaya/features/profile/presentation/views/widgets/profile_body.dart';

class Profile
 extends StatelessWidget {
  const Profile
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ProfileBody(),
    );
  }
}