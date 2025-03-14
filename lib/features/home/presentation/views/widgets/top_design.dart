import 'dart:async';
import 'package:flutter/material.dart';

class TopDesign extends StatefulWidget {
  const TopDesign({super.key});

  @override
  State<TopDesign> createState() => _TopDesignState();
}

class _TopDesignState extends State<TopDesign> {
  late Timer _timer;
  late DateTime _currentTime;

  @override
  void initState() {
    super.initState();
    _currentTime = DateTime.now();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        _currentTime = DateTime.now();
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/masged.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Text(
                  _formatDate(_currentTime),
                  style: const TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(right: 20, top: 50),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: 120,
                      height: 120,
                      child: CircularProgressIndicator(
                        value: _currentTime.second / 60,
                        strokeWidth: 8,
                        backgroundColor: Colors.grey[200],
                        color: const Color(0xFF2ea585),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 5),
                        Text(
                          _formatTime(_currentTime),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _formatTime(DateTime time) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    int hour = time.hour > 12 ? time.hour - 12 : time.hour;
    hour = hour == 0 ? 12 : hour;
    String hours = twoDigits(hour);
    String minutes = twoDigits(time.minute);
    String seconds = twoDigits(time.second);
    String period = time.hour >= 12 ? "PM" : "AM"; // تحديد AM أو PM
    return "$hours:$minutes:$seconds $period";
  }
  // تنسيق التاريخ لعرض اليوم والشهر والسنة باللغة العربية
  String _formatDate(DateTime time) {
    List<String> arabicMonths = [
      'يناير', 'فبراير', 'مارس', 'أبريل', 'مايو', 'يونيو',
      'يوليو', 'أغسطس', 'سبتمبر', 'أكتوبر', 'نوفمبر', 'ديسمبر'
    ];
    String day = time.day.toString();
    String month = arabicMonths[time.month - 1];
    String year = time.year.toString();
    return  " $day \n $year \t $month ";
  }
}
