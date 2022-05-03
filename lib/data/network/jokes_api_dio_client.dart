import 'package:dio/dio.dart';

class JokesApiDioClient {
  static const String apiUrl = "https://karljoke.herokuapp.com/";
  static const int connectTimeoutMilliseconds = 10000;
  static const int receiveTimeoutMilliseconds = 10000;

  final Dio dio;

  JokesApiDioClient._({
    required this.dio,
  });

  factory JokesApiDioClient.create() {
    final dio = Dio(
      BaseOptions(
        baseUrl: apiUrl,
        connectTimeout: connectTimeoutMilliseconds,
        receiveTimeout: receiveTimeoutMilliseconds,
      ),
    );

    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));

    return JokesApiDioClient._(dio: dio);
  }
}
