import 'package:flutter/material.dart';

import 'package:lodin_screen/Screen/Logout.dart';
import 'package:lodin_screen/Screen/Screen_2.dart';
//  2الصفحة الافتتاحية

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 400,
        width: 700,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
        ),

        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              Text(
                'اهلا بك فى مؤسسة المسار',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              SizedBox(height: 3),
              Text(
                'للفئات الخاصه',
                style: TextStyle(
                  color: Colors.white.withOpacity(.6),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogoutPage(),
                      ),
                    );
                  },
                  child: Text(
                    'تسجيل دخول',
                    style: TextStyle(color: Colors.blue, fontSize: 32),
                  ),
                ),
              ),
              SizedBox(height: 25),
              SizedBox(
                height: 50,
                width: 350,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Screen_Regisr(),
                      ),
                    );
                  },
                  child: Text(
                    "انشاء حساب",
                    style: TextStyle(color: Colors.blue, fontSize: 32),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
