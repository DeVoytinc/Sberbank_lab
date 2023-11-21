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
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            SvgPicture.asset(
              data.imageName,
              width: 36,
              height: 36,
              color: MyColors.primary,
            ),
            SizedBox(
              width: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.40,
                  ),
                ),
                Text(
                  data.subtitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.550000011920929),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.41,
                  ),
                )
              ],
            ),
            Spacer(),
            SvgPicture.asset('lib/images/arrow_right.svg'),
          ],
        ),
      ),
    );
  }
}
