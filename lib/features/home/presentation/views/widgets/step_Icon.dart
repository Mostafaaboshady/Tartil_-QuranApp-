import 'package:flutter/material.dart';

class StepIcon extends StatelessWidget {
  final IconData icon;
  final bool isActive;

  const StepIcon({super.key, required this.icon, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: isActive
              ? const Color(0xFF2ea585)
              : const Color.fromARGB(255, 217, 205, 205),
          child: isActive
              ? const Icon(Icons.
              check, color: Colors.white, size: 16)
              : null,
        ),
        const SizedBox(height: 4),
        Icon(
          icon,
          color: Colors.black,
        ),
      ],
    );
  }
}
