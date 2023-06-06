import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 49.76,
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/tab_bar.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
