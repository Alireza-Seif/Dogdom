import 'package:dogdom/widget/icon_bar.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(children: [IconBarSelect(),],),
    );
  }
}
