import 'package:flutter/material.dart';
import '../widgets/section_header.dart';

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
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
