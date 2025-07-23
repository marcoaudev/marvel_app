import 'package:equatable/equatable.dart';

class ThumbnailEntity extends Equatable {
  final String path;
  final String extension;

  const ThumbnailEntity({required this.path, required this.extension});

  factory ThumbnailEntity.fromJson(Map<String, dynamic> json) {
    return ThumbnailEntity(
      path: json['path'] as String,
      extension: json['extension'] as String,
    );
  }

  @override
  List<Object?> get props => [path, extension];
}
