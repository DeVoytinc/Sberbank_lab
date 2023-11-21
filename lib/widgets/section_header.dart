import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {super.key, required this.title, required this.paragraph});

  final String title;
  final String paragraph;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              //height: 0.06,
              letterSpacing: -0.70,
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Text(paragraph,
              style: TextStyle(
                color: Colors.black.withOpacity(0.5),
                fontSize: 14,
                fontWeight: FontWeight.w500,
                //height: 0.09,
                letterSpacing: -0.42,
              )),
        ],
      ),
    );
  }
}
