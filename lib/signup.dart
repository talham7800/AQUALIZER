import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fyp/Login.dart';
import 'package:fyp/services/firebase_services.dart';
import 'package:fyp/widget/widget.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  TextEditingController _emailconroller = new TextEditingController();
  TextEditingController _passconroller = new TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
          size: 20.0,
        ),
        centerTitle: true,
        title: Text(
          'Sign Up',
          style: TextStyle(
              fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              left: 20.0, right: 20.0, top: 20.0, bottom: 20.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(
                        fontSize: 34.0,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff004899)),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                RichText(
                    text: TextSpan(children: <TextSpan>[
                  TextSpan(
                    text: "Enter your Name, Email and Password for \nsign up.",
                    style: TextStyle(
                        color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                  ),
                  TextSpan(
                    text: "  Alreday have account?",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffC61820),
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => login()),
                        );
                      },
                  ),
                ])),
                SizedBox(
                  height: 10.0,
                ),
                CustomTextField(hintText: "Full Name"),
                SizedBox(
                  height: 20.0,
                ),
                CustomTextField(
                    emailtextEditingController: _emailconroller,
                    hintText: "Email Address"),
                SizedBox(
                  height: 20.0,
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
                  height: 20.0,
                ),
                CustomElevatedButton(
                  onPressed: () {
                    AuthenticationService().Signup(
                      context,
                      email: _emailconroller.text.trim(),
                      password: _passconroller.text.trim(),
                    );
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => login()));
                  },
                  elevation: 0,
                  text: 'CREATE MY ACCOUNT',
                  textColor: Colors.white,
                  buttonColor: Color(0xff004899),
                  borderRadius: 10,
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  fontSize: 11.5,
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                      'By Signing up you agree to our Terms \nConditions & Privacy Policy.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff868686))),
                ),
                SizedBox(
                  height: 20.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
