import 'package:flutter/material.dart';

import '../../resources/app_colors.dart';
import 'app_bar_button.dart';

class TopBar extends StatefulWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  bool _selectedButton = false;
  void setSelectedButton() {
    setState(() {
      _selectedButton = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppBarButton(
          color:
              _selectedButton ? AppColors.choiseButton : AppColors.infoButton,
          title: 'Усі',
          onTap: () => {setState(() {})},
        ),
        AppBarButton(
          title: 'Робочі',
          onTap: () => {setState(() {})},
        ),
        AppBarButton(
          title: 'Особисті',
          onTap: () => {setState(() {})},
        ),
      ],
    );
  }
}
