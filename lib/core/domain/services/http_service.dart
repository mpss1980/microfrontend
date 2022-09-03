import 'package:microfrontend/core/domain/entities/http_response.dart';

abstract class HttpService {
  Future<HttpResponse<T>> get<T>(String path, {Map<String, dynamic>? queryParameters});
}
