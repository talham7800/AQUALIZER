import 'package:flutter/material.dart';
import 'package:fyp/Login.dart';
import 'package:fyp/widget/widget.dart';

class forgot_password extends StatefulWidget {
  const forgot_password({Key? key}) : super(key: key);

  @override
  State<forgot_password> createState() => _forgot_passwordState();
}

class _forgot_passwordState extends State<forgot_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Forgot Password',
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
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      fontSize: 34.0,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff004899)),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Text(
                "Enter your email address and we will send you a reset instructions.",
                style: TextStyle(
                    color: Color.fromRGBO(134, 134, 134, 1), fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 15.0,
              ),
              CustomTextField(hintText: "Email Address"),
              SizedBox(
                height: 15.0,
              ),
              CustomElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => login()));
                },
                elevation: 0,
                text: 'RESET PASSWORD',
                textColor: Colors.white,
                buttonColor: Color(0xff004899),
                borderRadius: 10,
                height: 54,
                width: MediaQuery.of(context).size.width,
                fontSize: 11.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
