import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hidaya/core/utils/NetWork/Prayer_Times_Repository.dart';
import 'package:hidaya/core/utils/network/api_serves.dart';
import 'package:hidaya/features/home/data/repo/ayah_repo_impe.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiServes>(ApiServes(Dio()));
  getIt.registerSingleton<AyahRepoImpe>(AyahRepoImpe(getIt.get<ApiServes>()));
  getIt.registerSingleton<PrayerTimesRepository>(
      PrayerTimesRepository());
// Alternatively you could write it if you don't like global variables
}
