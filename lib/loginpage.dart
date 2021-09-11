import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Lets Log In',
                style: TextStyle(color: Color(0xff0096c7), fontSize: 23),
              ),
              Text(
                'Welcome back to your account',
                style: TextStyle(color: Color(0xff0096c7), fontSize: 16),
              ),
              SizedBox(
                height: 37,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xfff8f8f8),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Email atau Username',
                          hintStyle:
                              TextStyle(fontSize: 12, color: Color(0xff0096c7)),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xfff8f8f8),
                      border: Border.all(color: Colors.grey, width: 1)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle:
                              TextStyle(fontSize: 12, color: Color(0xff0096c7)),
                          border: InputBorder.none),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),

              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Color(0xFF0096c7), fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                height: 42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Color(0xff047397),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 30,),


              Row(
                children: [
                  Expanded(child: Divider()),
                  Text('Or'),
                  Expanded(child: Divider()),
                ],
              ),
              SizedBox(height: 30,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF8F8F8),
                    border: Border.all(color: Colors.grey.withOpacity(0.1))),
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/ggl.png',
                        height: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Google',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF0096c7)),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 10,),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                width: double.infinity,
                height: 42,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffF8F8F8),
                    border: Border.all(color: Colors.grey.withOpacity(0.1))),
                child: FlatButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/icon/fb.png',
                        height: 18,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Facebook',
                        style:
                            TextStyle(fontSize: 16, color: Color(0xFF0096c7)),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 80,),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don’t have an account?', style: TextStyle(color: Color(0xff0096c7)),),
                    Text('Register', style: TextStyle(color: Color(0xff0096c7), fontWeight: FontWeight.w500)),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    ));
  }
}
