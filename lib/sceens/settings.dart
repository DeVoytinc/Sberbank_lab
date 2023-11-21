import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(221, 245, 245, 245),
        child: Center(child: const CircularProgressIndicator()));
  }
}
