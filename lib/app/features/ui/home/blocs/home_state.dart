import 'package:marvel_app/app/features/domain/entities/character_entity.dart';

abstract class HomeState {}

class InitialHomeState extends HomeState {}

class LoadingHomeState extends HomeState {}

class SuccessHomeState extends HomeState {
  final List<CharacterEntity> characters;

  SuccessHomeState(this.characters);
}

class FailedHomeState extends HomeState {
  final String error;

  FailedHomeState(this.error);
}