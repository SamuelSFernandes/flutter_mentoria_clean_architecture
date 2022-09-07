import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class HttpClient {
  final Dio _dio;

  HttpClient({required Dio dio}) : _dio = dio;

  Future<Response> get(String endpoint, {Map<String, dynamic>? query}) {
    return _dio.get(endpoint, queryParameters: query);
  }

  Future<Response> post(String endpoint, dynamic body) {
    return _dio.post(endpoint, data: body);
  }

  Future<Response> put(String endpoint, dynamic body) {
    return _dio.put(endpoint, data: body);
  }

  Future<Response> delete(String endpoint) {
    return _dio.delete(endpoint);
  }
}
