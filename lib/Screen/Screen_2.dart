import 'package:flutter/material.dart';
import 'package:lodin_screen/Screen/otp_screen.dart';

import 'package:lodin_screen/custom/add_text.dart';
import 'package:lodin_screen/custom/photo.dart';

// الاشتراك
class Screen_Regisr extends StatelessWidget {
  const Screen_Regisr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue.shade100,
      //   title: Text('Welcome'),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                photo(),

                SizedBox(height: 7),
                // Expanded(
                // child:
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  height: 700,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      AddTextFiield(
                        icon: Icons.person,
                        tittle: 'الاسم  الكامل',
                      ),
                      AddTextFiield(
                        icon: Icons.email,
                        tittle: 'البريد الالكترونى ',
                      ),
                      AddTextFiield(
                        icon: Icons.phone,
                        tittle: 'رقم الموبيل مع رمز الدولة بدون(*)',
                      ),
                      AddTextFiield(
                        icon: Icons.password,
                        tittle: 'كلمة المرور ',
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          children: [
                            Text.rich(
                              TextSpan(
                                style: TextStyle(color: Colors.brown.shade900),
                                children: [
                                  TextSpan(text: 'اوافق على '),
                                  TextSpan(
                                    text: 'الشروط والاحكام ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 90),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        width: 250,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(5),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const OtpScreen(),
                              ),
                            );
                          },

                          child: Text(
                            'انشاء حساب',
                            style: TextStyle(
                              color: Colors.deepPurple.shade400,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'لديك حساب ؟ تسجيل دخول',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: 40, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notification_add, size: 40, color: Colors.grey),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event, size: 40, color: Colors.grey),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 40, color: Colors.blue),
            label: '',
          ),
        ],
      ),
    );
  }
}
