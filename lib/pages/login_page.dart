import 'package:flutter/material.dart';
import 'package:ui_design/pages/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: 40,
                      )),
                ],
              ),
              CircleAvatar(radius: 70),
              Text(
                "Let's you in",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Colors.black),
              ),
              Container(
                // width: 400,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Column(
                    children: [
                      OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.facebook,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Contiue with facebook"),
                            ],
                          )),
                      OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.g_mobiledata,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Contiue with Google"),
                            ],
                          )),
                      OutlinedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.apple,
                                color: Colors.black,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text("Contiue with facebook"),
                            ],
                          )),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                color: Colors.black,
              ),
              Container(
                width: 300,
                height: 45,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(150.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: ((context) => )));
                  },
                  child: Text(
                    "Sign with password",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => SignUpPage()),
                          ));
                    },
                    child:
                        Text("Sign up", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
