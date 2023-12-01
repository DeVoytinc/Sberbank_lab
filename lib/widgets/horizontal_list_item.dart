import 'package:flutter/material.dart';
import 'package:sberbank_lab/models/SubscriptionModel.dart';
import 'package:sberbank_lab/themes/sizes.dart';
import 'package:sberbank_lab/themes/text_styles.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({super.key, required this.subscription});

  final Subscription subscription;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),

      

      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 10,
          fixedSize: const Size(216, 130),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          shadowColor: Colors.black.withAlpha(90),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: () { },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              children: [
                Image.asset(
                  subscription.imageName,
                  width: Sizes.iconSize,
                  height:  Sizes.iconSize,
                ),
                const SizedBox(
                  width: 13,
                ),
                Text(
                  subscription.title,
                  style: TextStyles.primary(Sizes.text_regular)
                ),
              ],
            ),
            const Spacer(),
            Text(
              subscription.subtitle,
              style: TextStyles.primary(Sizes.text_small)
            ),
            Text(
              subscription.money,
              style: TextStyles.secondary(Sizes.text_small)
            )
          ]),
        ),
      ),
    );
  }
}
