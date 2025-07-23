import 'dart:convert';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:marvel_app/app/core/services/http_client/http_client.dart';
import 'package:marvel_app/app/core/services/http_client/http_exception.dart';
import 'package:marvel_app/app/core/services/http_client/http_response.dart';

class DioImplementation implements IHttpClient {
  final Dio dio;

  DioImplementation(this.dio);

  @override
  String parameters() {
    final publicKey = dotenv.env['PUBLIC_KEY'];
    final privateKey = dotenv.env['PRIVATE_KEY'];

    final ts = DateTime.now().millisecondsSinceEpoch;
    final keys = utf8.encode('$ts$privateKey$publicKey');
    final hash = md5.convert(keys).toString();

    return 'ts=$ts&apikey=$publicKey&hash=$hash';
  }

  String _buildUrl(String path) {
    return '$path?${parameters()}';
  }

  @override
  Future<HttpResponse> get(String path) async {
    try {
      final response = await dio.get(_buildUrl(path));
      return HttpResponse(data: response.data, statusCode: response.statusCode ?? 200);
    } on DioException catch (e) {
      throw HttpException(message: e.message ?? 'An error occurred', statusCode: e.response?.statusCode ?? 500);
    }
  }
}
