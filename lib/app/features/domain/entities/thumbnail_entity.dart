class ThumbnailEntity {
  final String path;
  final String extension;

  ThumbnailEntity({required this.path, required this.extension});

  factory ThumbnailEntity.fromJson(Map<String, dynamic> json) {
    return ThumbnailEntity(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );
  }
}
