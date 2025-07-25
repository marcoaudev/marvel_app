
import 'package:marvel_app/app/core/services/http_client/http_response.dart';

abstract interface class IHttpClient {
  String parameters();
  Future<HttpResponse> get(String path);
  // Future<HttpResponse> post(String path, {dynamic data});
  // Future<HttpResponse> put(String path, {dynamic data});
  // Future<HttpResponse> delete(String path);
}
