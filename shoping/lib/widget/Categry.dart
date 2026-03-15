import 'package:flutter/material.dart';

class CategoryIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 30),
            _buildCategoryItem(Icons.label, "إلكترونيات"),
            SizedBox(width: 40),
            _buildCategoryItem(Icons.checkroom, "ملابس"),
            SizedBox(width: 40),
            _buildCategoryItem(Icons.home, "منزل"),
            SizedBox(width: 40),
            _buildCategoryItem(Icons.menu_book, "كتب"),
            SizedBox(width: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 90,
          height: 80,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15),
          ),
          child: Icon(icon, size: 50, color: Colors.black87),
        ),
        SizedBox(height: 20),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
