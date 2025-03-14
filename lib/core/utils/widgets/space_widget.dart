import 'package:flutter/material.dart';
import 'package:hidaya/core/utils/size_config.dart';

class HorizintalSpase extends StatelessWidget {
  const HorizintalSpase({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defaultSize! * value!,
    );
  }
}

class VerticalSpase extends StatelessWidget {
  const VerticalSpase({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defaultSize! * value!,
    );
  }
}
