class ItemEntity {
  final String resourceURI;
  final String name;
  final String? type;

  ItemEntity({required this.resourceURI, required this.name, this.type});

  factory ItemEntity.fromJson(Map<String, dynamic> json) {
    return ItemEntity(
      resourceURI: json['resourceURI'] as String,
      name: json['name'] as String,
      type: json['type'] as String?,
    );
  }
}
