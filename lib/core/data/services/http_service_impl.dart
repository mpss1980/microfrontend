import 'package:dio/dio.dart';
import 'package:microfrontend/core/@shared/constants/api_constants.dart';
import 'package:microfrontend/core/domain/entities/http_response.dart';
import 'package:microfrontend/core/domain/services/http_service.dart';

class HttpServiceImpl implements HttpService {
  late Dio _dio;

  HttpServiceImpl() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://api.themoviedb.org/4/',
      headers: {
        'content-type': 'application/json;charset=utf-8',
        'authorization': 'Bearer ${ApiConstants.themoviedbToken}',
      },
    ));
  }

  @override
  Future<HttpResponse<T>> get<T>(String path, {Map<String, dynamic>? queryParameters}) {
    return _dio.get(path, queryParameters: queryParameters).then((response) => HttpResponse(data: response.data));
  }
}
