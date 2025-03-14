import 'package:flutter/material.dart';

class BuildAzkarButton extends StatelessWidget {
  const BuildAzkarButton({super.key, required this.icon, required this.label, required this.onTap});

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 130,
            width: 180,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF2ea585),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Icon(
              icon,
              size: 50,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}


