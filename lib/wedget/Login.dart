import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    // body:
    Center(
      child: Container(
        height: 400,
        width: 700,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(50),
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
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'تسجيل دخول',
                  style: TextStyle(color: Colors.blue, fontSize: 32),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "انشاء حساب",
                  style: TextStyle(color: Colors.blue, fontSize: 32),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
