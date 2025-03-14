import 'dart:convert';
import 'package:hidaya/features/prayer/data/models/prayers_models.dart';
import 'package:http/http.dart' as http;

class PrayerTimesRepository {
  Future<PrayerTimes> fetchPrayerTimes() async {
    final response = await http.get(Uri.parse(
        'https://api.aladhan.com/v1/timingsByCity/11-03-2025?city=cairo&country=egypt&method=8'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data']['timings'];
      return PrayerTimes.fromJson(data);
    } else {
      throw Exception('Failed to load prayer times');
    }
  }
}
