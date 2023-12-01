import 'package:flutter/material.dart';
import 'package:sberbank_lab/themes/sizes.dart';
import 'package:sberbank_lab/themes/text_styles.dart';

import '../Themes/colors.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {super.key, required this.title, required this.paragraph});

  final String title;
  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyles.primaryBold(Sizes.text_regularHeader)),
          const SizedBox(height: 14,),
          Text(paragraph, style: TextStyles.secondary(Sizes.text_regular)),
        ],
      ),
    );
  }
}
