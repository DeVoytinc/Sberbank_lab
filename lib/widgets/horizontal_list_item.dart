import 'package:flutter/material.dart';

class HorizontalListItem extends StatelessWidget {
  const HorizontalListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 130,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x114F4F6C),
            blurRadius: 14,
            offset: Offset(0, 8),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 10,
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              
              Image.asset(
                'lib/images/sber_prime.png',
                width: 36,
                height: 36,
              ),
              SizedBox(
                width: 13,
              ),
              Text(
                'СберПрайм',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.40,
                ),
              ),
            ],
          ),
          Expanded(child: Container()),
          Text(
            'Платёж 9 июля',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.41,
            ),
          ),
          Text(
            '199 ₽ в месяц',
            style: TextStyle(
              color: Colors.black.withOpacity(0.550000011920929),
              fontSize: 14,
              fontWeight: FontWeight.w500,
              letterSpacing: -0.41,
            ),
          )
        ]),
      ),
    );
  }
}
