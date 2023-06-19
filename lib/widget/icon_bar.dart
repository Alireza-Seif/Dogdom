import 'package:flutter/material.dart';

class IconBarSelect extends StatelessWidget {
  const IconBarSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Ranking Icon
          Column(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.emoji_events_outlined,
                  size: 42,
                  color: Colors.orange,
                ),
              ),
              Text('Ranking')
            ],
          ),
          //Discuss Icon
          Column(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.message_outlined,
                  size: 42,
                  color: Colors.orange,
                ),
              ),
              Text('Discuss')
            ],
          ),
          //Surrounding Icon
          Column(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  size: 42,
                  color: Colors.orange,
                ),
              ),
              Text('Surrounding')
            ],
          ),
        ],
      ),
    );
  }
}

class IconBarDiscover extends StatelessWidget {
  const IconBarDiscover({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //Ranking Icon
          Column(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.people_alt_outlined,
                  size: 42,
                  color: Colors.orange,
                ),
              ),
              Text('Nearby')
            ],
          ),
          //Discuss Icon
          Column(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.event_note_outlined,
                  size: 42,
                  color: Colors.orange,
                ),
              ),
              Text('Revelation')
            ],
          ),
          //Surrounding Icon
          Column(
            children: [
              IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.shopping_basket_outlined,
                  size: 42,
                  color: Colors.orange,
                ),
              ),
              Text('Foster care')
            ],
          ),
        ],
      ),
    );
  }
}
