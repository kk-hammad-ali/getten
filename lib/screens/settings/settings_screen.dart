import 'package:flutter/material.dart';
import 'package:getten/screens/settings/componet/body.dart';
import 'package:getten/utils/assets/colors/colors.dart';
import 'package:getten/widget/custom_appbar_widget.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.whiteColor,
      appBar: CustomAppBar(
        text: 'Settings',
        isTrailing: false,
      ),
      body: BodySettingScreen(),
    );
  }
}
