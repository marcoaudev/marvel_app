class UrlEntity {
  
  final String type;
  final String url;

  UrlEntity({required this.type, required this.url});

  factory UrlEntity.fromJson(Map<String, dynamic> json) {
    return UrlEntity(
      type: json['type'] as String,
      url: json['url'] as String,
    );
  }
}