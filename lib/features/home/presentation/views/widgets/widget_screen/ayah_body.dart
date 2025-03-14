import 'package:flutter/material.dart';

class AyahBody extends StatelessWidget {
  const AyahBody({
    super.key,
    this.images,
    this.nameAyah,
    this.numberAyah,
    this.onPressed,
  });

  final Image? images;
  final String? nameAyah;
  final String? numberAyah;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF34d395), Color(0xFF2ea585)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 8,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // العمود الأول (الصورة ورقم السورة)
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 12),
                    width: 50,
                    height: 50,
                    child: images, // الصورة (مثل الكعبة أو القبة)
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 35,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Text(
                      '$numberAyah',
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),

              // العمود الثاني (اسم السورة)
              Expanded(
                child: Text(
                  '$nameAyah',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
