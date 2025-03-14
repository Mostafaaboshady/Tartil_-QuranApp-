import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hidaya/features/azkar/data/model/azkar_model.dart';

part 'azkar_state.dart';

class AzkarCubit extends Cubit<AzkarState> {
  AzkarCubit() : super(AzkarInitial());

  final Dio _dio = Dio();

  Future<void> fetchAzkar() async {
    emit(AzkarLoading());
    try {
      final response = await _dio.get('https://raw.githubusercontent.com/nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json');
      final jsonData = jsonDecode(response.data);
      final List<Azkar> azkarList = jsonData['أذكار الصباح'][0].map<Azkar>((json) => Azkar.fromJson(json)).toList();
      emit(AzkarLoaded(azkarList));
    } catch (e) {
      print('خطأ في استرجاع بيانات Azkar: $e');
      emit(AzkarError("Failed to fetch data"));
    }

    }
  Future<void> fetchAzkar2() async {
    emit(AzkarLoading());
    try {
      final response = await _dio.get('https://raw.githubusercontent.com/nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json');
      final jsonData = jsonDecode(response.data);
      final List<Azkar> azkarList = jsonData["أذكار المساء"].map<Azkar>((json) {
        if (json is Map<String, dynamic>) {
          return Azkar.fromJson({'content': json['content'], 'category': json['category'], 'count': json['count'], 'description': json['description'], 'reference': json['reference']});
        } else {
          return Azkar.fromJson({'content': json, 'category': '', 'count': '', 'description': '', 'reference': ''});
        }
      }).toList();
      emit(AzkarLoaded(azkarList));
    } catch (e) {
      print('خطأ في استرجاع بيانات Azkar: $e');
      emit(AzkarError("Failed to fetch data"));
    }
  }
  Future<void> fetchAzkar3() async {
    emit(AzkarLoading());
    try {
      final response = await _dio.get('https://raw.githubusercontent.com/nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json');
      final jsonData = jsonDecode(response.data);
      final List<Azkar> azkarList = jsonData["أذكار النوم"].map<Azkar>((json) {
        if (json is Map<String, dynamic>) {
          return Azkar.fromJson({'content': json['content'], 'category': json['category'], 'count': json['count'], 'description': json['description'], 'reference': json['reference']});
        } else {
          return Azkar.fromJson({'content': json, 'category': '', 'count': '', 'description': '', 'reference': ''});
        }
      }).toList();
      emit(AzkarLoaded(azkarList));
    } catch (e) {
      print('خطأ في استرجاع بيانات Azkar: $e');
      emit(AzkarError("Failed to fetch data"));
    }
  }

  Future<void> fetchAzkar4() async {
    emit(AzkarLoading());
    try {
      final response = await _dio.get('https://raw.githubusercontent.com/nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json');
      final jsonData = jsonDecode(response.data);
      final List<Azkar> azkarList = jsonData["أذكار الاستيقاظ"].map<Azkar>((json) {
        if (json is Map<String, dynamic>) {
          return Azkar.fromJson({'content': json['content'], 'category': json['category'], 'count': json['count'], 'description': json['description'], 'reference': json['reference']});
        } else {
          return Azkar.fromJson({'content': json, 'category': '', 'count': '', 'description': '', 'reference': ''});
        }
      }).toList();
      emit(AzkarLoaded(azkarList));
    } catch (e) {
      print('خطأ في استرجاع بيانات Azkar: $e');
      emit(AzkarError("Failed to fetch data"));
    }
  }

}
