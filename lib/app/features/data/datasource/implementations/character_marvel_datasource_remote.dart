import 'package:marvel_app/app/core/services/http_client/errors/errors.dart';
import 'package:marvel_app/app/core/services/http_client/http_client.dart';
import 'package:marvel_app/app/core/services/http_client/http_exception.dart';
import 'package:marvel_app/app/features/data/datasource/character_datasource.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';

class CharacterMarvelDataSourceRemote implements ICharacterDataSource {
  final IHttpClient httpClient;
  CharacterMarvelDataSourceRemote(this.httpClient);

  @override
  Future<List<CharacterEntity>> getCharacters({int offset = 0}) async {
    final response = await httpClient.get(
      '/characters?offset=$offset&limit=20',
    );

    try {
      final data = response.data;
      final results = data['data']['results'] as List;
      return results.map((e) => CharacterEntity.fromJson(e)).toList();
    } on HttpException catch (e) {
      if (e.statusCode == 401) {
        throw AuthenticationError("Unauthorized");
      } else if (e.statusCode == 418) {
        throw ServerUnavailableError("Server Unavailable");
      } else {
        throw ServerException("Server Error");
      }
    }
  }

  @override
  Future<CharacterEntity?> getCharacterById({required int id}) async {
    final response = await httpClient.get('/characters/$id');
    try {
      final data = response.data;
      final results = data['data']['results'] as List;
      if (results.isEmpty) {
        return null;
      }
      return CharacterEntity.fromJson(results.first);
    } on HttpException catch (e) {
      if (e.statusCode == 401) {
        throw AuthenticationError("Unauthorized");
      } else if (e.statusCode == 418) {
        throw ServerUnavailableError("Server Unavailable");
      } else {
        throw ServerException("Server Error");
      }
    }
  }
}
