import 'package:flutter/material.dart';
import 'package:sberbank_lab/models/models_data.dart';
import 'package:sberbank_lab/widgets/tariffs_and_limits_item.dart';

class TariffsAndLimitsList extends StatelessWidget {
  const TariffsAndLimitsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: ModelsData.tariffsAndLimitsList.length,
      itemBuilder: (context, index) {
        return TariffsAndLimitsItem(
            data: ModelsData.tariffsAndLimitsList[index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 0,
          thickness: 1.5,
          indent: 63,
        );
      },
    );
  }
}
