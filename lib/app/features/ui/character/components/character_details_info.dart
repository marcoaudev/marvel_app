import 'package:flutter/material.dart';
import 'package:marvel_app/app/core/shared/theme/colors/app_colors.dart';
import 'package:marvel_app/app/core/shared/widgets/text/app_text.dart';

class CharacterDetailsInfo extends StatelessWidget {
  final String description;
  const CharacterDetailsInfo({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.opacity,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                'Descrição',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              AppText(
                maxLines: 10,
                description.isNotEmpty
                    ? description
                    : 'Sem descrição disponível.',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
