import 'package:flutter/material.dart';

import '../constant/color_constant.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key, required this.searchController});

  final TextEditingController searchController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(5),
        hintText: 'Search events... ',
        hintStyle: TextStyle(color: Colors.black),
        filled: true,
        fillColor: colFour,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 2.0,
            color: colOne,
          ), // Focus border
          borderRadius: BorderRadius.circular(50),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.transparent,
          ), // Enabled border
          borderRadius: BorderRadius.circular(50),
        ),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search_rounded, color: Colors.black,),
        ),
      ),
    );
  }
}
