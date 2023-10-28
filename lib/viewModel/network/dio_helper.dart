import 'package:api_app/viewModel/network/end_points.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static Dio? dio;

   static void init() {
    dio = Dio(BaseOptions(
      baseUrl: EndPoints.BaseUrl,
      receiveDataWhenStatusError: true,
      headers: {
       "Content-Type": "application/json"
      }
    ));
   }

   static Future<Response> get(
      {required String endPoint,
      Map<String, dynamic>? body,
      Map<String, dynamic>? params}) async {
    try {
      Response? response =
          await dio?.get(endPoint, data: body, queryParameters: params);
      return response!;
    } catch (e) {
      rethrow;
    }
  }
 }
