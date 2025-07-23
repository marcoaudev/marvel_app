import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:marvel_app/app/features/data/datasource/character_datasource.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';

class CharactersMarvelClientLocal implements ICharacterDataSource {
  static const String _charactersPath = 'assets/response/response.json';

  Future<List<CharacterEntity>> _loadCharactersFromAsset(String path) async {
    final String response = await rootBundle.loadString(path);
    final data = json.decode(response);
    final results = data['data']['results'] as List;
    return results.map((e) => CharacterEntity.fromJson(e)).toList();
  }

  @override
  Future<List<CharacterEntity>> getCharacters({int offset = 0}) async {
    return _loadCharactersFromAsset(_charactersPath);
  }

  @override
  Future<CharacterEntity?> getCharacterById({required int id}) async {
    final characters = await _loadCharactersFromAsset(_charactersPath);
    try {
      return characters.firstWhere((element) => element.id == id);
    } catch (_) {
      return null;
    }
  }
}
