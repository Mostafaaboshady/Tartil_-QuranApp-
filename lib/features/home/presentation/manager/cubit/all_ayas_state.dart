part of 'all_ayas_cubit.dart';


abstract class AllAyasState {}

class AllAyasInitial extends AllAyasState {}

class AllAyasLoading extends AllAyasState {}

class AllAyasLoaddid extends AllAyasState {
final  List<Ayas> ayas;

  AllAyasLoaddid(this.ayas);
  
}

class AllAyasError extends AllAyasState {
  final String errorMessage;

  AllAyasError(this.errorMessage);
}
