import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 43,
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.grey[120],
          hintText: 'Search the sample',
          hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: 13,
          ),
          prefixIcon: Icon(Icons.search, color: Colors.grey[500],size: 28,),
          suffixIcon: Icon(Icons.mic, color: Colors.grey[700],size: 28,),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}
