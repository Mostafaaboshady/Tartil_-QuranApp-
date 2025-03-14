import 'package:bloc/bloc.dart';
import 'package:hidaya/features/home/data/models/ayas/ayas.dart';
import 'package:hidaya/features/home/data/repo/ayah_repo_impe.dart';
import 'package:meta/meta.dart';

part 'all_ayas_state.dart';

class AllAyasCubitCubit extends Cubit<AllAyasState> {
  AllAyasCubitCubit(this.ayahRepoImpe) : super(AllAyasInitial());
  final AyahRepoImpe ayahRepoImpe;
  getAllAyas() async {
    emit(AllAyasLoading());
    var values = await ayahRepoImpe.featchAllAyah();
    values.fold((error) {
      emit(AllAyasError(error));
    }, (ayas) {
      emit(AllAyasLoaddid(ayas));
    });
  }
}
