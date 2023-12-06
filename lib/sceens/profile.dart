import 'package:flutter/material.dart';
import 'package:sberbank_lab/widgets/tariffs_and_limits_list.dart';
import '../models/strings.dart';
import '../widgets/horizontal_list.dart';
import '../widgets/section_header.dart';
import '../widgets/tags_block.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: const [

        SectionHeader(
          title: StringConstans.sectionSubscriptonTitle,
          paragraph: StringConstans.sectionSubscriptonSubTitle,
        ),

        HorizontalList(),

        SectionHeader(
          title: StringConstans.sectionTariffsTitle,
          paragraph: StringConstans.sectionTariffsSubTitle,
        ),

        SizedBox(height: 20),
        TariffsAndLimitsList(),
        SizedBox(height: 20),

        SectionHeader(
          title: StringConstans.sectionInterestTitle,
          paragraph: StringConstans.sectionInterestSubTitle,
        ),
        
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: TagsBlock(),
        ),
        SizedBox(height: 100),
      ],
    );
  }
}
