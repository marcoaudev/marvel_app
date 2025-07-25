import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/images/app_images.dart';

class AppCachedImage extends StatelessWidget {
  final String? imageUrl;
  final BoxFit? fit;
  final String semanticsLabel;

  const AppCachedImage({
    required this.imageUrl,
    this.fit = BoxFit.cover,
    super.key,
    required this.semanticsLabel,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null || imageUrl!.isEmpty) {
      return PlaceHolderImage();
    }
    return Semantics(
      label: semanticsLabel,
      child: CachedNetworkImage(
        height: 120,
        filterQuality: FilterQuality.high,
        imageUrl: imageUrl ?? '',
        fit: fit,
        placeholderFadeInDuration: const Duration(milliseconds: 0),
        errorWidget: (context, url, dynamic v) {
          return PlaceHolderImage();
        },
      ),
    );
  }
}

class PlaceHolderImage extends StatelessWidget {
  const PlaceHolderImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.placeholder,
      semanticLabel: "Sem imagem disponível",
    );
  }
}
