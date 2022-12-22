import "package:flutter/material.dart";
import 'package:ui_design/pages/sign_up_details.dart';
import 'package:ui_design/widgets/border_box.dart';
import 'package:ui_design/widgets/bottom_widget.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
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
                        icon: const Icon(
                          Icons.keyboard_arrow_left_rounded,
                          size: 40,
                        )),
                  ],
                ),
                CircleAvatar(radius: 70),
                SizedBox(
                  height: 20,
                ),
                const Text(
                  "Create new account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 500,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.email,
                                size: 20,
                              ),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(.1),
                              //contentPadding: EdgeInsets.all(10.0),
                              hintText: "Email",
                              //hintStyle: TextStyle(color: Colors.black),
                            ),
                            //style: TextStyle(color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock,
                                size: 20,
                              ),
                              suffixIcon: Icon(Icons.remove_red_eye),
                              filled: true,
                              fillColor: Colors.grey.withOpacity(.1),
                              border: InputBorder.none,
                              hintText: 'Password',
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Checkbox(
                                value: isChecked,

                                fillColor: MaterialStateProperty.resolveWith(
                                    (states) => Colors.blue),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                },
                                // shape: OutlinedBorder(

                                // ),
                              ),
                            ),
                            Text(
                              "Remember me",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          width: 300,
                          height: 45,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(150.0),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => Profile())));
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 50,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomWidget.borderBox(
                          context,
                          Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          )),
                      BottomWidget.borderBox(context,
                          Icon(Icons.g_mobiledata, color: Colors.green)),
                      BottomWidget.borderBox(context, Icon(Icons.apple)),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Sign in",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
