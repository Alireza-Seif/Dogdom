import 'package:flutter/material.dart';

import '../widget/tab_bar_widget.dart';

class HomeScreenSelect extends StatelessWidget {
  const HomeScreenSelect({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: const Column(
          children: [TabBarWidget()],
        ),
      ),
    );
  }
}
