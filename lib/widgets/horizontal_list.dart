import 'package:flutter/material.dart';

import '../models/ModelsData.dart';
import 'horizontal_list_item.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      height: 170,
      child: ListView.builder(
        padding: EdgeInsets.all(17),
        scrollDirection: Axis.horizontal,
        itemCount: ModelsData.subscriptions.length,
        itemBuilder: (context, index) {
          return HorizontalListItem(
              subscription: ModelsData.subscriptions[index]);
        },
      ),
    );
  }
}
