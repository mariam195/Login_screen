import 'package:flutter/material.dart';

import 'package:lodin_screen/custom/photo.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  height: 500,
                  width: double.infinity,
                  // color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.all(70),
                    child: Column(
                      children: [
                        SizedBox(height: 15),
                        Text(
                          'ادخل رمز التحقق  OTP',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'لقد ارسلنا الكود الخاص بك الى 010*****000',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        Text(
                          "سينتهى هذا الكود فى 00:30",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(height: 20),
                        // OtpInput(),
                        Center(
                          child: Pinput(
                            length: 6,
                            defaultPinTheme: PinTheme(
                              width: 50,
                              height: 70,
                              textStyle: TextStyle(fontSize: 20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.horizontal(
                                  left: Radius.elliptical(10, 10),
                                  right: Radius.elliptical(10, 10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 90),
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
                            onPressed: () {},
                            child: Text(
                              'تأكيد  ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple.shade400,
                                fontSize: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
