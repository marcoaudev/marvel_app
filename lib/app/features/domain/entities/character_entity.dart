import 'package:equatable/equatable.dart';
import 'package:marvel_app/app/features/domain/entities/comic_entity.dart';
import 'package:marvel_app/app/features/domain/entities/thumbnail_entity.dart';
import 'package:marvel_app/app/features/domain/entities/urls_entity.dart';

class CharacterEntity extends Equatable {
  final int id;
  final String name;
  final String description;
  final DateTime modified;
  final ThumbnailEntity thumbnail;
  final ComicEntity comics;
  final ComicEntity series;
  final ComicEntity stories;
  final ComicEntity events;
  final List<UrlEntity> urls;

  const CharacterEntity({
    required this.id,
    required this.name,
    required this.modified,
    required this.description,
    required this.thumbnail,
    required this.comics,
    required this.series,
    required this.stories,
    required this.events,
    required this.urls,
  });

  factory CharacterEntity.fromJson(Map<String, dynamic> json) {
    return CharacterEntity(
      id: json['id'] as int,
      name: json['name'] as String,
      modified: DateTime.parse(json['modified'] as String),
      description: json['description'] as String,
      thumbnail: ThumbnailEntity(
        path: json['thumbnail']['path'] as String,
        extension: json['thumbnail']['extension'] as String,
      ),
      comics: ComicEntity.fromJson(json['comics'] as Map<String, dynamic>),
      series: ComicEntity.fromJson(json['series'] as Map<String, dynamic>),
      stories: ComicEntity.fromJson(json['stories'] as Map<String, dynamic>),
      events: ComicEntity.fromJson(json['events'] as Map<String, dynamic>),
      urls:
          (json['urls'] as List<dynamic>)
              .map((e) => UrlEntity.fromJson(e as Map<String, dynamic>))
              .toList(),
    );
  }

  @override
  List<Object?> get props => [
    id,
    name,
    description,
    thumbnail,
    comics,
    series,
    stories,
    events,
    urls,
  ];
}
