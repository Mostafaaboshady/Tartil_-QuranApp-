import 'dart:convert';
import 'package:hidaya/features/ahadeth/model/Hadith.dart';
import 'package:http/http.dart' as http;

class HadithRepository {
  Future<List<Hadith>> fetchHadiths() async {
    final response = await http.get(Uri.parse('https://hadis-api-id.vercel.app/hadith/abu-dawud?page=2&limit=500'));

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body)['items'];
      return data.map((item) => Hadith.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load hadiths');
    }
  }
}
