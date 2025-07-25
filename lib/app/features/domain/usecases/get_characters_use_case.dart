import 'package:marvel_app/app/core/shared/usecase/use_case.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:marvel_app/app/features/domain/repositories/character_repository.dart';

class GetCharactersUseCase
    implements UseCase<List<CharacterEntity>, Map<String, int>> {
  final ICharacterRepository repository;

  GetCharactersUseCase(this.repository);

  @override
  Future<(Exception?, List<CharacterEntity>?)> call(
    Map<String, int> params,
  ) async {
    final response = await repository.getCharacters(
      offset: params['offset'] ?? 0,
    );
    return (response.$1, response.$2);
  }
}
