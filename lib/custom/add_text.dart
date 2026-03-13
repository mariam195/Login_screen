import 'package:flutter/material.dart';

class AddTextFiield extends StatelessWidget {
  AddTextFiield({super.key, this.tittle, required this.icon});
  dynamic tittle;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          filled: true,
          hintText: tittle,
          suffix: Icon(icon, size: 40, color: Colors.blue),
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
