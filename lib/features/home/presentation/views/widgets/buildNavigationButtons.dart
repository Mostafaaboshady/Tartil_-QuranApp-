import 'package:flutter/material.dart';
import 'package:hidaya/features/ahadeth/ui/hadith_page.dart';
import 'package:hidaya/features/azkar/presentation/view/Azkar_Page.dart';
import 'package:hidaya/features/azkar/presentation/view/azkar_categoreis.dart';
import 'package:hidaya/features/home/presentation/views/widgets/buildNavButton.dart';
import 'package:hidaya/features/home/presentation/views/widgets/details_ayas_body.dart';
import 'package:hidaya/features/home/presentation/views/widgets/list_ayah_body.dart';
import 'package:hidaya/features/tasbih/screen/selected_tasbih_screen.dart';

class Buildnavigationbuttons extends StatelessWidget {
  const Buildnavigationbuttons({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Buildnavbutton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  HadithPage()));

          },
          icon: Icons.calendar_today,
          label: 'أحاديث',
        ),
        Buildnavbutton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  SelectedTasbihScreen()));
          },
          icon: Icons.accessibility_new,
          label: 'تسبيح',
        ),
        Buildnavbutton(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>  AzkarCategoreis()));

          },
          icon: Icons.book,
          label: 'اذكار',
        ),
        Buildnavbutton(
          icon: Icons.menu_book,
          label: 'قرآن', onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ListAyahBody()));

        },
        ),
      ],
    );
  }
}
