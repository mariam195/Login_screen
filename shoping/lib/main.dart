import 'package:flutter/material.dart';

import 'package:shoping/Screens/Home_page.dart';
import 'package:shoping/Screens/Orders.dart';
import 'package:shoping/widget/Categry.dart';

void main() {
  runApp(
    Directionality(textDirection: TextDirection.rtl, child: Shopping_store()),
  );
}

class Shopping_store extends StatelessWidget {
  const Shopping_store({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          // OrdersPage(),
          //  CategoryIcons(),
          HomePage(),
    );
  }
}
