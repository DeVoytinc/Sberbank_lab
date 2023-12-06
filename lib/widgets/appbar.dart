import 'package:flutter/material.dart';
import 'package:sberbank_lab/themes/sizes.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key, required this.tabController}) : super(key: key);

  final tabController;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 2,
      pinned: true,
      floating: false,
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
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        centerTitle: true,
        expandedTitleScale: 1,
        titlePadding: const EdgeInsets.only(bottom: 60),
        title: Text(
          'Екатерина',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        background: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: Sizes.profileImageSize,
                height: Sizes.profileImageSize,
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
                child: Image.asset("assets/images/avatar.png"),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
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
    );
  }
}
