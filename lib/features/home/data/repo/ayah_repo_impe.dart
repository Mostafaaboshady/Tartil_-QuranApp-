import 'package:dartz/dartz.dart';
import 'package:hidaya/core/utils/network/api_serves.dart';
import 'package:hidaya/features/home/data/models/ayas/ayas.dart';
import 'package:hidaya/features/home/data/repo/ayah_repo.dart';

class AyahRepoImpe implements AyahRepo {
  final ApiServes apiServes;
  final String _baseUrl = 'https://api.alquran.cloud/v1/';
  final String _endPoints = 'quran/quran-uthmani';

  AyahRepoImpe(this.apiServes);
  @override
  Future<Either<String, List<Ayas>>> featchAllAyah() async {
    try {
      List<Ayas> ayas = [];
      var data = await apiServes.getAyah(
          baseUrl: '$_baseUrl',
          endPoints: '$_endPoints');

      for (var i in data['data']['surahs']) {
        ayas.add(Ayas.fromJson(i));
      }
      return right(ayas);
    } catch (e) {
      return left(e.toString());
    }
  }
}
