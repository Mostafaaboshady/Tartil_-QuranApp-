import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/core/utils/NetWork/Hadith_Repository.dart';
import 'package:hidaya/features/ahadeth/model/Hadith.dart';
import 'package:meta/meta.dart';

part 'hadith_state.dart';

class HadithCubit extends Cubit<HadithState> {
  final HadithRepository hadithRepository;

  HadithCubit(this.hadithRepository) : super(HadithInitial());

  void fetchHadiths() async {
    try {
      emit(HadithLoading());
      final hadiths = await hadithRepository.fetchHadiths();
      emit(HadithLoaded(hadiths));
    } catch (e) {
      emit(HadithError('Failed to load hadiths'));
    }
  }
}
