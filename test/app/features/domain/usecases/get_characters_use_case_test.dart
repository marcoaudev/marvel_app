import 'package:flutter_test/flutter_test.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';
import 'package:mocktail/mocktail.dart';
import 'package:marvel_app/app/features/domain/repositories/character_repository.dart';
import 'package:marvel_app/app/features/domain/usecases/get_characters_use_case.dart';
import '../../../../../mocks/character_mock.dart';

class MockCharacterRepository extends Mock implements ICharacterRepository {}

void main() {
  late GetCharactersUseCase usecase;
  late ICharacterRepository repository;

  setUp(() {
    repository = MockCharacterRepository();
    usecase = GetCharactersUseCase(repository);
  });

  final List<CharacterEntity> tCharacters = [characterMock];
  final params = {'offset': 0};

  test("Should get characters from repository", () async {
    when(
      () => repository.getCharacters(),
    ).thenAnswer((_) async => (null, tCharacters));

    final result = await usecase(params);

    expect(result, (null, tCharacters));

    verify(() => repository.getCharacters()).called(1);
  });

  test("Should return error when repository fails", () async {
    final exception = Exception('Repository error');

    when(
      () => repository.getCharacters(),
    ).thenAnswer((_) async => (exception, null));

    final result = await usecase(params);

    expect(result, (exception, null));
    verify(() => repository.getCharacters()).called(1);
  });
}
