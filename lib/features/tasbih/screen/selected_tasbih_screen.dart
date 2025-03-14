import 'package:flutter/material.dart';
import '../widget/circle_progress.dart';

class SelectedTasbihScreen extends StatefulWidget {
  const SelectedTasbihScreen({super.key});

  @override
  _SelectedTasbihScreenState createState() => _SelectedTasbihScreenState();
}

class _SelectedTasbihScreenState extends State<SelectedTasbihScreen> {
  int count = 0;
  late int totalCounter;
  String selectedTasbih = "سبحان الله"; // التسبيحة الافتراضية

  @override
  void initState() {
    super.initState();
    totalCounter = 33; // العدد الافتراضي للتسبيحات
  }

  void addCounter() {
    setState(() {
      count++;
    });
  }

  void resetCounter() {
    setState(() {
      count = 0;
    });
  }

  void selectTasbih(String tasbih) {
    setState(() {
      selectedTasbih = tasbih; // تغيير التسبيحة المختارة
      count = 0; // إعادة ضبط العداد
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/onBoarding2.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white, size: 30,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                selectedTasbih, // عرض التسبيحة المختارة
                style: TextStyle( fontWeight: FontWeight.bold , color: Colors.white ,fontSize: 25),
                textAlign: TextAlign.center,
              ),
            ),
            GestureDetector(
              onTap: addCounter,
              child: Container(
                width: 200,
                height: 200,
                // جعل الخلفية شفافة
                color: Colors.transparent,
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: CustomPaint(
                        foregroundPainter: CircleProgress(
                          currentProgress: (count / totalCounter) * 100,
                          foregroundColor:  Color(0xFF2ea585),
                          backgroundColor: Theme.of(context).colorScheme.background,
                          strokeWidth: 8,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            count.toString(),
                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                              color: Color(0xFF2ea585),
                            ),
                          ),
                          Text(
                            '/ $totalCounter',
                            style: TextStyle(
                              color: Color(0xFFfff995),
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(Size(0, 56)),
                  ),
                  onPressed: resetCounter,
                  child: Icon(
                    Icons.restart_alt,
                    size: 35,
                    color: Color(0xFF2ea585),
                  ),
                ),
                SizedBox(width: 20),
                IconButton(
                  icon: Icon(Icons.add_circle, size: 35, color: Color(0xFF2ea585)),
                  onPressed: addCounter,
                ),
              ],
            ),
            SizedBox(height: 20),
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                tasbihButton("سبحان الله"),
                tasbihButton("الحمد لله"),
                tasbihButton("الله أكبر"),
                tasbihButton("لا إله إلا الله"),
                tasbihButton("أستغفر الله"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget tasbihButton(String tasbih) {
    return GestureDetector(
      onTap: () => selectTasbih(tasbih),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color:  Colors.black26,
        ),
        child: Text(
          tasbih,
          style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
