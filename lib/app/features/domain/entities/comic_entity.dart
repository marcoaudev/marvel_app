import 'package:marvel_app/app/features/domain/entities/item_entity.dart';

class ComicEntity {
  final int available;
  final String collectionURI;
  final List<ItemEntity> items;

  ComicEntity({
    required this.available,
    required this.collectionURI,
    required this.items,
  });
}
