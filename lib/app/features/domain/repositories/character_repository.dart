import 'package:marvel_app/app/features/domain/entities/character_entity.dart';

abstract interface class ICharacterRepository {
  Future<(Exception?, List<CharacterEntity>?)> getCharacters({int offset = 0});
  Future<(Exception?, CharacterEntity?)> getCharacterById({required int id});
}
