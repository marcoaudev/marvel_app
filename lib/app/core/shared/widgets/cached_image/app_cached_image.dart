import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/images/app_images.dart';
import 'package:marvel_app/app/core/shared/widgets/loading/app_loading.dart';

class AppCachedImage extends StatelessWidget {
  final String imageUrl;
  final Color? color;
  final BoxFit? fit;
  final BlendMode? colorBlendMode;
  final String semanticsLabel;

  const AppCachedImage({
    required this.imageUrl,
    this.fit = BoxFit.cover,
    super.key,
    required this.semanticsLabel,
    this.color,
    this.colorBlendMode,
  });

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return PlaceHolderImage();
    }
    return Semantics(
      label: semanticsLabel,
      child: CachedNetworkImage(
        height: 120,
        filterQuality: FilterQuality.high,
        imageUrl: imageUrl,
        fit: fit,
        color: color,
        colorBlendMode: colorBlendMode,
        progressIndicatorBuilder:
            (context, url, progress) => SizedBox(
              height: 20,
              width: 20,
              child: Center(child: AppLoading()),
            ),
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
