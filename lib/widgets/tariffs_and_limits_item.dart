import 'package:flutter/material.dart';
import 'package:sberbank_lab/models/tariffs_limits_item_model.dart';

import '../themes/colors.dart';

class TariffsAndLimitsItem extends StatelessWidget {
  const TariffsAndLimitsItem({
    super.key,
    required this.data,
  });

  final TariffsAndLimitsItemModel data;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(data.title),
          showCloseIcon: true,
        ));
      },
      style: ElevatedButton.styleFrom(
        elevation: 0,
            // for//egroundColor: AppColor.hoverOnPrimary,
            // surfaceTintColor: AppColor.primary,
            //fixedSize: const Size(Sizes.subscriptionButtonWidth, Sizes.subscriptionButtonHeight),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            )
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Image.asset(
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
            Image.asset('assets/images/disclosure.png', width: 24, height: 24,),
            
          ],
        ),
      ),
    );
  }
}
