import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:marvel_app/app/core/services/http_client/implementations/dio_implementation.dart';
import 'package:marvel_app/app/features/data/datasource/character_datasource.dart';
import 'package:marvel_app/app/features/data/datasource/implementations/character_marvel_datasource_remote.dart';
import 'package:marvel_app/app/features/data/repositories/character_repository_implementation.dart';
import 'package:marvel_app/app/features/domain/repositories/character_repository.dart';
import 'package:marvel_app/app/features/domain/usecases/get_characters_use_case.dart';
import 'package:marvel_app/app/features/ui/home/blocs/home_bloc.dart';

final getIt = GetIt.instance;

class ApplicationInjector {
  static Future setup() async {
    await dotenv.load();
    await _clientsSetup();
    await _repositoriesSetup();
    await _useCasesSetup();
    await _blocsSetup();
  }

  static Future<void> _clientsSetup() async {
    getIt.registerLazySingleton<Dio>(
      () => Dio(
        BaseOptions(
          baseUrl:
              dotenv.env['BASE_URL'] ?? 'https://gateway.marvel.com/v1/public',
        ),
      ),
    );

    getIt.registerLazySingleton<DioImplementation>(
      () => DioImplementation(getIt<Dio>()),
    );

    getIt.registerFactory<ICharacterDataSource>(
      () => CharacterMarvelDataSourceRemote(getIt<DioImplementation>()),
    );

    // getIt.registerFactory<ICharacterDataSource>(
    //   () => CharactersMarvelDataSourceLocal(),
    // );
  }

  static Future<void> _repositoriesSetup() async {
    getIt.registerFactory<ICharacterRepository>(
      () => CharacterRepositoryImplementation(getIt<ICharacterDataSource>()),
    );
  }

  static Future<void> _useCasesSetup() async {
    getIt.registerFactory<GetCharactersUseCase>(
      () => GetCharactersUseCase(getIt<ICharacterRepository>()),
    );
  }

  static Future<void> _blocsSetup() async {
    getIt.registerFactory<HomeBloc>(
      () => HomeBloc(getIt<GetCharactersUseCase>()),
    );
  }
}
