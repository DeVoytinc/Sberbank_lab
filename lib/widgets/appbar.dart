import 'package:flutter/material.dart';
import '../themes/colors.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, required this.tabController})
      : super(key: key);

  final tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 1,
      pinned: true,
      floating: true,
      expandedHeight: 270,
      actions: [
        IconButton(
          icon: const Icon(Icons.logout),
          onPressed: () {},
        )
      ],
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () {},
      ),
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontFamily: 'SF Pro Text',
        fontWeight: FontWeight.w500,
        height: 0.08,
        letterSpacing: -0.40,
      ),
      bottom: TabBar(
        controller: tabController,
        tabs: const <Widget>[
          Tab(
            child: Text(
              'Профиль',
            ),
          ),
          Tab(
            child: Text(
              'Настройки',
            ),
          ),
        ],
      ),
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        background: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 110,
                  height: 110,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(38),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x7A1D1D25),
                        blurRadius: 24,
                        offset: Offset(0, 16),
                        spreadRadius: -16,
                      )
                    ],
                  ),
                  child: Image.asset("lib/images/avatar.png"),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Екатерина',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ]),
        ),
      ),
    );
  }
}
