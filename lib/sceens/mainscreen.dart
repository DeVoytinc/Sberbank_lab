import 'package:flutter/material.dart';
import 'package:sberbank_lab/sceens/profile.dart';

import '../widgets/appbar.dart';
import '../widgets/section_header.dart';
import 'settings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  String? selectedChoice;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomAppbar(
            tabController: _tabController,
          ),
          SliverFillRemaining(
            child: TabBarView(controller: _tabController, children: [
              ProfileScreen(),
              SettingsScreen(),
            ]),
          )
        ],
      ),
    );
  }
}
