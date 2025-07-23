import 'package:marvel_app/app/core/shared/usecase/use_case.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/domain/repositories/character_repository.dart';

class GetCharactersUseCase
    implements UseCase<CharacterEntity, Map<String, int>> {
  final ICharacterRepository repository;

  GetCharactersUseCase(this.repository);

  @override
  Future<(Exception?, CharacterEntity?)> call(Map<String, int> params) async {
    final response = await repository.getCharacterById(id: params['id'] ?? 0);
    return (response.$1, response.$2);
  }
}
