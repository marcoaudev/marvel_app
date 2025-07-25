import 'package:equatable/equatable.dart';

class UrlEntity extends Equatable {
  final String type;
  final String url;

  const UrlEntity({required this.type, required this.url});

  factory UrlEntity.fromJson(Map<String, dynamic> json) {
    return UrlEntity(type: json['type'] as String, url: json['url'] as String);
  }

  @override
  List<Object?> get props => [type, url];
}
