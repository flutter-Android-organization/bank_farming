import 'package:bank_farming/src/constant/color_constant.dart';
import 'package:flutter/material.dart';

class IconMenuButton extends StatelessWidget {
  const IconMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      // Custom icon with white background and black icon
      icon: Container(
        decoration: BoxDecoration(
          color: colFour, // White background
          shape: BoxShape.circle, // Circular button
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: Image.asset(
          'assets/images/random/filters.png',
          color: Colors.black,
        ),
      ),
      color: colFour, // Popup menu background
      surfaceTintColor: colFour,
      tooltip: 'Filter',
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      onSelected: (value) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected: $value')),
        );
      },
      itemBuilder: (BuildContext context) => [
        const PopupMenuItem(
          value: 'All',
          child: Text('All'),
        ),
        const PopupMenuItem(
          value: 'Unread',
          child: Text('Unread'),
        ),
        const PopupMenuItem(
          value: 'Favourites',
          child: Text('Favourites'),
        ),
        const PopupMenuItem(
          value: 'Groups',
          child: Text('Groups'),
        ),
      ],
    );
  }
}


