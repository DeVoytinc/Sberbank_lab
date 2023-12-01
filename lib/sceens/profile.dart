import 'package:flutter/material.dart';
import '../models/ModelsData.dart';
import '../widgets/horizontal_list.dart';
import '../widgets/section_header.dart';
import '../widgets/tags_block.dart';
import '../widgets/tariffs_and_limits_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics:NeverScrollableScrollPhysics(),
      children: [
        const SectionHeader(
            title: 'У вас подключено',
            paragraph:
                'Подписки, автоплатежи и сервисы на которые вы подписались'),
        const HorizontalList(),
        const SectionHeader(
          title: 'Тарифы и лимиты',
          paragraph: 'Для операций в Сбербанк Онлайн',
        ),
        const SizedBox(
          height: 20,
        ),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ModelsData.tariffsAndLimitsList.length,
          itemBuilder: (context, index) {
            return TariffsAndLimitsItem(
                data: ModelsData.tariffsAndLimitsList[index]);
          }, 
          separatorBuilder: (BuildContext context, int index) { 
            return const Divider(height: 10, thickness: 1.5, indent: 63,);
          },
        ),
        const SizedBox(
          height: 20,
        ),
        const SectionHeader(
          title: 'Интересы',
          paragraph:
              'Мы подбираем истории и предложения по темам, которые вам нравятся',
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TagsBlock(),
        ),
        const SizedBox(
          height: 100,
        ),
      ],
    );
  }
}
