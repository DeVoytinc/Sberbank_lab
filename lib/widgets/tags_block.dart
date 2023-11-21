import 'package:flutter/material.dart';

import '../models/ModelsData.dart';

class TagsBlock extends StatefulWidget {
  const TagsBlock({super.key});

  @override
  State<TagsBlock> createState() => _TagsBlockState();
}

class _TagsBlockState extends State<TagsBlock> {
  String? selectedChoice;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: List<Widget>.generate(
        ModelsData.tags.length,
        (int index) => Builder(
          builder: (BuildContext context) {
            return FilterChip(
              label: Text(ModelsData.tags[index]),
              selected: selectedChoice == ModelsData.tags[index],
              onSelected: (bool selected) {
                setState(() {
                  selectedChoice = selected ? ModelsData.tags[index] : null;
                });
              },
            );
          },
        ),
      ),
    );
  }
}
