import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hidaya/core/utils/NetWork/Prayer_Times_Repository.dart';
import 'package:hidaya/features/prayer/presentation/manager/cubit/cubit_prayer_state.dart';

class PrayerTimesCubit extends Cubit<PrayerTimesState> {
  final PrayerTimesRepository prayerTimesRepository;

  PrayerTimesCubit(this.prayerTimesRepository) : super(PrayerTimesInitial());

  void fetchPrayerTimes() async {
    try {
      emit(PrayerTimesLoading());
      final prayerTimes = await prayerTimesRepository.fetchPrayerTimes();
      emit(PrayerTimesLoaded(prayerTimes));
    } catch (e) {
      emit(PrayerTimesError('Failed to load prayer times'));
    }
  }
}
