import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fyp/forgot_password.dart';
import 'package:fyp/services/firebase_services.dart';
import 'package:fyp/signup.dart';
import 'package:fyp/widget/widget.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController _emailconroller =
      new TextEditingController(text: 'talham7800@gmail.com');
  TextEditingController _passconroller =
      new TextEditingController(text: '123456');

  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Log in',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
            color: Colors.white,
          ),
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'AQUALYSER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff004899),
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Enter your Phone number or Email for',
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                      text: TextSpan(children: <TextSpan>[
                    TextSpan(
                      text: "Sign in, Or ",
                      style: TextStyle(
                          color: Color.fromRGBO(134, 134, 134, 1),
                          fontSize: 16),
                    ),
                    TextSpan(
                      text: " Create new account. ",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffC61820),
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => signup()),
                          );
                        },
                    ),
                  ])),
                  SizedBox(
                    height: 30,
                  ),

                  CustomTextField(
                      emailtextEditingController: _emailconroller,
                      hintText: "Email Address"),
                  SizedBox(
                    height: 15,
                  ),

                  CustomPassField(
                      passtextEditingController: _passconroller,
                      hintText: "Password",
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      }),

                  SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => forgot_password()),
                            );
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: Color.fromRGBO(134, 134, 134, 1),
                                fontSize: 14),
                          ))),
                  SizedBox(
                    height: 15,
                  ),
                  CustomElevatedButton(
                    onPressed: () {
                      AuthenticationService().Signin(
                        context,
                        email: _emailconroller.text.trim(),
                        password: _passconroller.text.trim(),
                      );
                    },
                    elevation: 0,
                    text: 'LOGIN',
                    textColor: Colors.white,
                    buttonColor: Color(0xff004899),
                    borderRadius: 10,
                    height: 54,
                    width: MediaQuery.of(context).size.width,
                    fontSize: 11.5,
                  ),

                  // InkWell(
                  //     onTap: () {
                  //       Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //             builder: (BuildContext context) =>
                  //                 forgot_password_screen()),
                  //       );
                  //     },
                  //     child: widgets().buttons("LOGIN")),
                  SizedBox(
                    height: 5,
                  ),
                ]),
          ),
        ));
  }
}
