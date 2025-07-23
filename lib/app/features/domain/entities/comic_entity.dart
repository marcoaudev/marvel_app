import 'package:marvel_app/app/features/domain/entities/item_entity.dart';

class ComicEntity {
  final int available;
  final String collectionURI;
  final List<ItemEntity> items;
  final int returned;

  ComicEntity({
    required this.available,
    required this.collectionURI,
    required this.items,
    required this.returned,
  });

  factory ComicEntity.fromJson(Map<String, dynamic> json) {
    return ComicEntity(
      available: json['available'] as int,
      collectionURI: json['collectionURI'] as String,
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      returned: json['returned'] as int,
    );
  }
}
