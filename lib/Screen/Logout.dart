import 'package:flutter/material.dart';
import 'package:lodin_screen/custom/add_text.dart';
import 'package:lodin_screen/custom/photo.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.blue.shade100,
      //   title: Text('Wellcom'),
      //   centerTitle: true,
      // ),
      body: ListView(
        children: [
          Column(
            children: [
              photo(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                ),
                height: 700,
                width: double.infinity,

                // color: Colors.blue,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Text(
                        "  اهلا بك نحن سعداء بعودتك من فضلك قم بتسجيل الدخول    ",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    AddTextFiield(icon: Icons.person, tittle: 'رقم الهاتف'),
                    AddTextFiield(icon: Icons.password, tittle: 'كلمة المرور '),
                    SizedBox(height: 30),

                    Text(
                      'هل  نسيت كلمة المرور ؟',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 70),
                    SizedBox(
                      height: 50,
                      width: 350,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.circular(8),
                          ),
                          iconSize: 200,
                        ),
                        onPressed: () {},
                        child: Text(
                          'تسجيل دخول',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),

                    Row(
                      children: [
                        Text.rich(
                          TextSpan(
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 20,
                            ),
                            children: [
                              TextSpan(text: 'ليس لديك حساب ؟  '),
                              TextSpan(
                                text: ' انشاء حساب ',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ],
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
