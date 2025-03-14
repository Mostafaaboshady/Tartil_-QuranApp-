import 'package:dartz/dartz.dart';
import 'package:hidaya/features/home/data/models/ayas/ayas.dart';

abstract class AyahRepo {
Future<Either<String,List<Ayas>>> featchAllAyah();
}
