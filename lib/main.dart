import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:hidaya/core/utils/NetWork/Prayer_Times_Repository.dart';
import 'package:hidaya/core/utils/network/service_locator.dart';
import 'package:hidaya/features/home/data/repo/ayah_repo_impe.dart';
import 'package:hidaya/features/home/presentation/manager/cubit/all_ayas_cubit.dart';
import 'package:hidaya/features/home/presentation/views/widgets/widget_screen/details_ayas.dart';
import 'package:hidaya/features/splash/presentation/views/splash_view.dart';

import 'features/prayer/presentation/manager/cubit/cubit_prayer_cubit.dart';

void main() {
  setup();
  runApp(
    DevicePreview(
      enabled: true,  // تفعيل DevicePreview
      builder: (context) => const MyApp(), // استدعاء تطبيقك هنا
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllAyasCubitCubit(getIt.get<AyahRepoImpe>())..getAllAyas(),
        ),
        BlocProvider(
          create: (context) =>
          PrayerTimesCubit(getIt.get<PrayerTimesRepository>())..fetchPrayerTimes(),
        ),
      ],
      child: MaterialApp(
        builder: DevicePreview.appBuilder, // إضافة DevicePreview.appBuilder لتفعيل المعاينة
        useInheritedMediaQuery: true, // دعم إعدادات الجهاز
        locale: DevicePreview.locale(context), // ضبط اللغة بناءً على معاينة الجهاز
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashView(),
          '/details_ayas': (context) => const DetailsAyas(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
