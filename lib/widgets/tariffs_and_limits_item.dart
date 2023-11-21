import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sberbank_lab/models/TariffsAndLimitsItemModel.dart';

import '../themes/colors.dart';

class TariffsAndLimitsItem extends StatelessWidget {
  const TariffsAndLimitsItem({
    super.key,
    required this.data,
  });

  final TariffsAndLimitsItemModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(data.title),
            showCloseIcon: true,
          ));
        },
        child: Row(
          children: [
            SvgPicture.asset(
              data.imageName,
              width: 36,
              height: 36,
              color: MyColors.primary,
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    maxLines: 10,
                    style: const TextStyle(
                      color: MyColors.TextTitleColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.40,
                    ),
                  ),
                  Text(
                    data.subtitle,
                    style: const TextStyle(
                      color: MyColors.TextSubtitleColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.41,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(data.title),
                  showCloseIcon: true,
                ));
              },
              icon: SvgPicture.asset('lib/images/arrow_right.svg'),
            ),
          ],
        ),
      ),
    );
  }
}
