import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart'; // استيراد مكتبة intl لتحويل الوقت
import 'package:hidaya/core/utils/NetWork/Prayer_Times_Repository.dart';
import 'package:hidaya/features/prayer/presentation/manager/cubit/cubit_prayer_cubit.dart';
import 'package:hidaya/features/prayer/presentation/manager/cubit/cubit_prayer_state.dart';

class PrayerTimesPage extends StatelessWidget {
  const PrayerTimesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مواقيت الصلاة',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        centerTitle: true,
        backgroundColor: Color(0xFF2ea585),
      ),
      body: BlocProvider(
        create: (context) =>
        PrayerTimesCubit(PrayerTimesRepository())..fetchPrayerTimes(),
        child: BlocBuilder<PrayerTimesCubit, PrayerTimesState>(
          builder: (context, state) {
            if (state is PrayerTimesLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is PrayerTimesLoaded) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    prayerTimeCard('الفجر', state.prayerTimes.fajr),
                    prayerTimeCard('الظهر', state.prayerTimes.dhuhr),
                    prayerTimeCard('العصر', state.prayerTimes.asr),
                    prayerTimeCard('المغرب', state.prayerTimes.maghrib),
                    prayerTimeCard('العشاء', state.prayerTimes.isha),
                  ],
                ),
              );
            } else if (state is PrayerTimesError) {
              return Center(child: Text(state.message));
            } else {
              return Center(child: Text('No data'));
            }
          },
        ),
      ),
    );
  }

  Widget prayerTimeCard(String prayerName, String prayerTime) {
    String formattedTime = convertTo12HourFormat(prayerTime);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF34d395), Color(0xFF2ea585)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  prayerName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2ea585),
                  ),
                ),
                Text(
                  formattedTime, // عرض الوقت بتنسيق 12 ساعة
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String convertTo12HourFormat(String time) {
    try {
      final DateFormat inputFormat = DateFormat('HH:mm');
      final DateFormat outputFormat = DateFormat('h:mm a');
      final DateTime parsedTime = inputFormat.parse(time);
      return outputFormat.format(parsedTime);
    } catch (e) {
      return time;
    }
  }
}
