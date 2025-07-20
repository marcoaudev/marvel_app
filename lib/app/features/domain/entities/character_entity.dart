import 'package:marvel_app/app/features/domain/entities/comic_entity.dart';
import 'package:marvel_app/app/features/domain/entities/thumbnail_entity.dart';
import 'package:marvel_app/app/features/domain/entities/urls_entity.dart';

class CharacterEntity {
  final int id;
  final String name;
  final String description;
  final ThumbnailEntity thumbnail;
  final ComicEntity comics;
  final ComicEntity series;
  final ComicEntity stories;
  final ComicEntity events;
  final List<UrlEntity> urls;

  CharacterEntity({
    required this.id,
    required this.name,
    required this.description,
    required this.thumbnail,
    required this.comics,
    required this.series,
    required this.stories,
    required this.events,
    required this.urls,
  });
}
