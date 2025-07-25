import 'package:equatable/equatable.dart';

class ItemEntity extends Equatable {
  final String resourceURI;
  final String name;
  final String? type;

  const ItemEntity({required this.resourceURI, required this.name, this.type});

  factory ItemEntity.fromJson(Map<String, dynamic> json) {
    return ItemEntity(
      resourceURI: json['resourceURI'] as String,
      name: json['name'] as String,
      type: json['type'] as String?,
    );
  }

  @override
  List<Object?> get props => [resourceURI, name, type];
}
