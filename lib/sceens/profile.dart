import 'package:flutter/material.dart';
import '../models/ModelsData.dart';
import '../widgets/horizontal_list_item.dart';
import '../widgets/section_header.dart';
import '../widgets/tariffs_and_limits_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(221, 245, 245, 245),
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(
              title: 'У вас подключено',
              paragraph:
                  'Подписки, автоплатежи и сервисы на которые вы подписались'),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 8),
            height: 170,
            child: ListView(
              padding: EdgeInsets.all(17),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                HorizontalListItem(),
                SizedBox(
                  width: 8,
                ),
                HorizontalListItem(),
              ],
            ),
          ),
          SectionHeader(
            title: 'Тарифы и лимиты',
            paragraph: 'Для операций в Сбербанк Онлайн',
          ),
          SizedBox(
            height: 20,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: ModelsData.tariffsAndLimitsList.length,
            itemBuilder: (context, index) {
              return TariffsAndLimitsItem(
                  data: ModelsData.tariffsAndLimitsList[index]);
            },
          ),
          SizedBox(
            height: 20,
          ),
          SectionHeader(
            title: 'Интересы',
            paragraph:
                'Мы подбираем истории и предложения по темам, которые вам нравятся',
          ),
        ],
      ),
    );
  }
}
