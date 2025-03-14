import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiServes {
  final Dio dio;
  
  ApiServes(this.dio);
   Future<Map<String,dynamic>> getAyah({required String baseUrl, required String endPoints}) async {
    Response response = await dio.get('$baseUrl$endPoints');
    dio.interceptors.add(
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseBody: true,
        responseHeader: true,)
    );
    return response.data;
  }

}
