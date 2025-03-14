part of 'hadith_cubit.dart';

@immutable
abstract class HadithState {}

class HadithInitial extends HadithState {}

class HadithLoading extends HadithState {}

class HadithLoaded extends HadithState {
  final List<Hadith> hadiths;
  HadithLoaded(this.hadiths);
}

class HadithError extends HadithState {
  final String message;
  HadithError(this.message);
}
