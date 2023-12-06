import 'package:flutter/material.dart';
import '../models/models_data.dart';

class TagsBlock extends StatefulWidget {
  const TagsBlock({super.key});

  @override
  State<TagsBlock> createState() => _TagsBlockState();
}

class _TagsBlockState extends State<TagsBlock> {
  Map<String, bool> tags = ModelsData.getTagsMap();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: List<Widget>.generate(
        tags.length,
        (int index) => Builder(
          builder: (BuildContext context) {
            return FilterChip(
              label: Text(tags.keys.elementAt(index)),
              labelStyle: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Colors.black),
              selected: tags.values.elementAt(index),
              onSelected: (bool selected) {
                setState(
                  () {
                    tags[tags.keys.elementAt(index)] = selected;
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
