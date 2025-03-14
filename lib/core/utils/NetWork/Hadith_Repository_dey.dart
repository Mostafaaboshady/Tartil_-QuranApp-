import 'dart:convert';
import 'package:hidaya/features/ahadeth/model/Hadith.dart';
import 'package:http/http.dart' as http;

class HadithRepositoryDey {
  Future<Hadith> fetchRandomHadith() async {
    final response = await http.get(Uri.parse('https://hadis-api-id.vercel.app/hadith/abu-dawud'));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List<dynamic> hadithList = data['items'];
      final randomHadith = hadithList[DateTime.now().day % hadithList.length];
      return Hadith.fromJson(randomHadith);
    } else {
      throw Exception('Failed to load hadith');
    }
  }
}
