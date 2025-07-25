import 'package:marvel_app/app/features/data/datasource/character_datasource.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/domain/repositories/character_repository.dart';

class CharacterRepositoryImplementation implements ICharacterRepository {
  final ICharacterDataSource datasource;

  CharacterRepositoryImplementation(this.datasource);

  @override
  Future<(Exception?, List<CharacterEntity>?)> getCharacters({
    int offset = 0,
  }) async {
    try {
      final response = await datasource.getCharacters();
      return (null, response);
    } on Exception catch (e) {
      return (e, null);
    }
  }

  @override
  Future<(Exception?, CharacterEntity?)> getCharacterById({
    required int id,
  }) async {
    try {
      final response = await datasource.getCharacterById(id: id);
      return (null, response);
    } on Exception catch (e) {
      return (e, null);
    }
  }
}
