import 'package:dio/dio.dart';

class HttpService {
  HttpService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: basUrl,
      ),
    );

    initializeInterceptors();
  }

  Dio? _dio;
  final String basUrl = 'https://y3u59pjfxn3n.softwars.com.ua';

  Future<Response> getRequest(String endPoint) async {
    Response response;

    try {
      response = await _dio!.get(endPoint);
    } on DioError catch (e) {
      print(e.message);
      throw Exception(e.message);
    }

    return response;
  }

  dynamic initializeInterceptors() {
    _dio!.interceptors.add(
      InterceptorsWrapper(
        onError: (error, errorInterceptorHandler) {
          print(error.message);
        },
        onRequest: (request, requestInterceptorHandler) {
          print('${request.method} ${request.path}');
        },
        onResponse: (response, responseInterceptorHandler) {
          print(response.data);
        },
      ),
    );
  }
}
