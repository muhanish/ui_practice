import 'dart:async';
import 'dart:io';

import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ui_design/widgets/alert_dialog.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List genders = ['Male', 'Female', 'Other'];
  final ImagePicker _picker = ImagePicker();
  File? imageFile;
  final _formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController nickNameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  SingleValueDropDownController genderController =
      SingleValueDropDownController();

  _getFromGallery() async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Fill Your Profile',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 100, 8.0, 0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  imageFile == null
                      ? CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 80,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(120.0, 100, 0, 0),
                            child: Container(
                              //color: Colors.indigo,
                              child: IconButton(
                                  onPressed: () {
                                    _getFromGallery();
                                  },
                                  icon: Icon(
                                    Icons.image,
                                    size: 40,
                                  )),
                            ),
                          ),
                        )
                      : CircleAvatar(
                          backgroundImage: FileImage(File(imageFile!.path)),
                          //backgroundColor: Colors.grey,
                          radius: 80,
                          child: Padding(
                            padding:
                                const EdgeInsets.fromLTRB(120.0, 100, 0, 0),
                            child: Container(
                              //color: Colors.indigo,
                              child: IconButton(
                                  onPressed: () {
                                    _getFromGallery();
                                  },
                                  icon: Icon(
                                    Icons.image,
                                    size: 40,
                                    color: Colors.blue,
                                  )),
                            ),
                          ),
                        ),
                  SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: TextFormField(
                                  controller: nameController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.1),
                                    border: InputBorder.none,
                                    hintText: 'Full Name',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: TextFormField(
                                  controller: nickNameController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.1),
                                    border: InputBorder.none,
                                    hintText: 'NickName',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: TextFormField(
                                  controller: dobController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.cake_rounded),
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.1),
                                    border: InputBorder.none,
                                    hintText: 'Date of Birth',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: TextFormField(
                                  controller: emailController,
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    if (!value.contains('@')) {
                                      return 'Email is invalid, must contain @';
                                    }
                                    if (!value.contains('.')) {
                                      return 'Email is invalid, must contain .';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(Icons.mail),
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.1),
                                    border: InputBorder.none,
                                    hintText: 'Email',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: DropDownTextField(
                                  controller: genderController,
                                  // initialValue: "name4",
                                  textFieldDecoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.grey.withOpacity(.1),
                                    border: InputBorder.none,
                                    hintText: 'Gender',
                                  ),
                                  listSpace: 20,
                                  listPadding: ListPadding(top: 20),

                                  validator: (value) {
                                    if (value == null) {
                                      return "Required field";
                                    } else {
                                      return null;
                                    }
                                  },
                                  dropDownList: const [
                                    DropDownValueModel(
                                        name: 'Male', value: "male"),
                                    DropDownValueModel(
                                        name: 'Female', value: "female"),
                                    DropDownValueModel(
                                        name: 'Others', value: "other"),
                                  ],
                                  // listTextStyle: const TextStyle(color: Colors.red),
                                  dropDownItemCount: 8,

                                  onChanged: (val) {},
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
                            ))),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                showDialog(
                                    context: context,
                                    builder: ((context) =>
                                        SingUpDialog(context)));
                                Timer(
                                    Duration(seconds: 1),
                                    (() => Navigator.pushReplacementNamed(
                                        context, '/homePage')));
                                print('Your name is : ${nameController.text}');
                                print(
                                    'Your Nick name is : ${nickNameController.text}');
                                print('Your dob is : ${dobController.text}');
                                print(
                                    'Your email is : ${emailController.text}');
                                print(
                                    'Your gender is : ${genderController.dropDownValue!.value}');
                              }
                            },
                            child: Text(
                              "Continue",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
