import 'package:flutter/material.dart';
import 'package:shoping/Screens/Orders.dart';

import 'package:shoping/widget/Categry.dart';
import 'package:shoping/widget/Custom_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade200,
        title: Align(
          alignment: Alignment.topRight,
          child: Text(
            "الرئيسية",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.list, size: 30, color: Colors.black),
        ),
      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            children: [
              TextField(
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                decoration: InputDecoration(
                  hintText: 'حقل البحث ',
                  hintTextDirection: TextDirection.rtl,
                  filled: true,

                  fillColor: Colors.grey.shade300,
                  maintainHintSize: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الفئات',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              CategoryIcons(),
              SizedBox(height: 15),
              Text(
                "منتجات مميزة",
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              CustomCard(),
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          }
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrdersPage()),
            );
          }
        },
        // currentIndex: _selectedIndex,
        // onTap: _onItemTapped,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'Search', icon: Icon(Icons.search)),
          BottomNavigationBarItem(
            label: 'Orders',
            icon: Icon(Icons.shopping_cart),
          ),

          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
