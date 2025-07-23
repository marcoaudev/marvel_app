import 'package:marvel_app/app/features/domain/entities/character_entity.dart';

abstract interface class ICharacterDataSource {
  Future<List<CharacterEntity>> getCharacters({int offset = 0});
  Future<CharacterEntity?> getCharacterById({required int id});
}
