import 'package:dogdom/components/icon/icon_view.dart';
import 'package:dogdom/constants/app_icons.dart';
import 'package:flutter/material.dart';

class IconBarSelect extends StatelessWidget {
  const IconBarSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
            onPressed: null,
            icon: IconView(
              icon: AppIcons.interlocution,
            ),),
      ],
    );
  }
}

class IconBarDiscover extends StatelessWidget {
  const IconBarDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
