import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:marvel_app/app/features/data/datasource/implementations/character_marvel_datasource_remote.dart';
import 'package:marvel_app/app/core/services/http_client/http_client.dart';
import 'package:marvel_app/app/core/services/http_client/http_response.dart';
import 'package:marvel_app/app/core/services/http_client/errors/errors.dart';
import 'package:marvel_app/app/features/domain/entities/character_entity.dart';

import '../../../../../../mocks/character_mock.dart';

class MockHttpClient extends Mock implements IHttpClient {}

void main() {
  late CharacterMarvelDataSourceRemote datasource;
  late MockHttpClient client;

  setUp(() {
    client = MockHttpClient();
    datasource = CharacterMarvelDataSourceRemote(client);
  });

  void mockSuccessGetCharacters() {
    when(() => client.get(any())).thenAnswer(
      (_) async => HttpResponse(
        data: {
          'data': {
            'results': [characterMockJson],
          },
        },
        statusCode: 200,
      ),
    );
  }

  void mockFailGetCharacters(int statusCode) {
    if (statusCode == 401) {
      when(
        () => client.get(any()),
      ).thenThrow(AuthenticationError("Unauthorized"));
    } else if (statusCode == 418) {
      when(
        () => client.get(any()),
      ).thenThrow(ServerUnavailableError("Server Unavailable"));
    } else {
      when(() => client.get(any())).thenThrow(ServerException("Server Error"));
    }
  }

  void mockSuccessGetCharacterById() {
    when(() => client.get(any())).thenAnswer(
      (_) async => HttpResponse(
        data: {
          'data': {
            'results': [characterMockJson],
          },
        },
        statusCode: 200,
      ),
    );
  }

  void mockSuccessGetCharacterByIdEmpty() {
    when(() => client.get(any())).thenAnswer(
      (_) async => HttpResponse(
        data: {
          'data': {'results': []},
        },
        statusCode: 200,
      ),
    );
  }

  void mockFailGetCharacterById(int statusCode) {
    if (statusCode == 401) {
      when(
        () => client.get(any()),
      ).thenThrow(AuthenticationError("Unauthorized"));
    } else if (statusCode == 418) {
      when(
        () => client.get(any()),
      ).thenThrow(ServerUnavailableError("Server Unavailable"));
    } else {
      when(() => client.get(any())).thenThrow(ServerException("Server Error"));
    }
  }
  
  group('CharacterMarvelDatasourceRemote', () {
    test('should return a list of CharacterEntity on success', () async {
      mockSuccessGetCharacters();
      final result = await datasource.getCharacters();
      expect(result, isA<List<CharacterEntity>>());
    });

    test('should throw AuthenticationError when statusCode is 401', () async {
      mockFailGetCharacters(401);
      expect(
        () => datasource.getCharacters(),
        throwsA(isA<AuthenticationError>()),
      );
    });

    test('should throw ServerUnavailableError when statusCode is 418', () async {
      mockFailGetCharacters(418);
      expect(
        () => datasource.getCharacters(),
        throwsA(isA<ServerUnavailableError>()),
      );
    });

    test(
      'should throw ServerException when statusCode is not 200, 401, or 418',
      () async {
        mockFailGetCharacters(500);
        expect(() => datasource.getCharacters(), throwsA(isA<ServerException>()));
      },
    );

    test(
      'should return CharacterEntity when getCharacterById finds a result',
      () async {
        mockSuccessGetCharacterById();
        final result = await datasource.getCharacterById(id: 1);
        expect(result, characterMock);
      },
    );

    test('should return null when getCharacterById finds no results', () async {
      mockSuccessGetCharacterByIdEmpty();
      final result = await datasource.getCharacterById(id: 1);
      expect(result, isNull);
    });

    test(
      'should throw AuthenticationError on getCharacterById when statusCode is 401',
      () async {
        mockFailGetCharacterById(401);
        expect(
          () => datasource.getCharacterById(id: 1),
          throwsA(isA<AuthenticationError>()),
        );
      },
    );

    test(
      'should throw ServerUnavailableError on getCharacterById when statusCode is 418',
      () async {
        mockFailGetCharacterById(418);
        expect(
          () => datasource.getCharacterById(id: 1),
          throwsA(isA<ServerUnavailableError>()),
        );
      },
    );

    test(
      'should throw ServerException on getCharacterById when statusCode is not 200, 401, or 418',
      () async {
        mockFailGetCharacterById(500);
        expect(
          () => datasource.getCharacterById(id: 1),
          throwsA(isA<ServerException>()),
        );
      },
    );
  });
}
