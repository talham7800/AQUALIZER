import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;
  VoidCallback? onPressed;
  double? elevation;
  final double borderRadius;

  final double height;
  final double width;
  final double fontSize;
  EdgeInsetsGeometry? padding;
  CustomElevatedButton({
    Key? key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    this.onPressed,
    this.elevation,
    required this.borderRadius,
    required this.height,
    required this.width,
    required this.fontSize,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        elevation: 0,
        minimumSize: Size(width, height),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor, fontSize: fontSize),
      ),
    );
  }
}

// class CustomTextField extends StatelessWidget {
//   final String hintText;
//   CustomTextField({
//     Key? key,
//     required this.hintText,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       //controller: _passwordcontroller,
//       validator: (val) {
//         if (val == null || val.isEmpty) {
//           return 'Required';
//         }
//
//         return null;
//       },
//       //obscureText: isPasswordHidden,
//       decoration: InputDecoration(
//         filled: true,
//         isDense: true,
//         contentPadding: EdgeInsets.symmetric(
//           horizontal: 20,
//           vertical: 10,
//         ),
//         fillColor: Color(0xffF4F5F7),
//         hintText: hintText,
//         hintStyle: TextStyle(
//           fontSize: 11,
//         ),
//         // suffixIcon: InkWell(
//         //  // onTap: togglePassword,
//         //   child: Icon(
//         //     Icons.remove_red_eye_outlined,
//         //     color: Color(0xffA1A2B3),
//         //     size: 15,
//         //   ),
//         // ),
//         // prefixIcon: Icon(
//         //   Icons.lock,
//         //   size: 18,
//         //   color: Color(0xff5548F8),
//         // ),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(50),
//           borderSide: BorderSide.none,
//         ),
//       ),
//     );
//   }
// }

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? emailtextEditingController;

  CustomTextField({
    Key? key,
    required this.hintText,
    this.emailtextEditingController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: emailtextEditingController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          suffixStyle: TextStyle(color: Colors.grey),
          prefixStyle: TextStyle(color: Colors.grey),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black.withAlpha(15),
              )),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Colors.black.withAlpha(15),
              )),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffC61820),
              )),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xffC61820),
              ))),
    );
  }
}

class CustomPassField extends StatelessWidget {
  final String hintText;
  final TextEditingController? passtextEditingController;
  VoidCallback? onPressed;
  CustomPassField({
    Key? key,
    required this.hintText,
    required this.onPressed,
    this.passtextEditingController,
  }) : super(key: key);
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromRGBO(251, 251, 251, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        width: 334,
        height: 54,
        child: TextField(
          controller: passtextEditingController,
          //keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
                onPressed: onPressed,

                //     () {
                //   setState(() {
                //     _isObscure = !_isObscure;
                //   }
                //
                //   );
                // }
              ),
              prefixStyle: TextStyle(color: Colors.grey),
              hintText: hintText,
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black.withAlpha(15),
                  )),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: Colors.black.withAlpha(15),
                  )),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red)),
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.red))),
        ),
      ),
    );
  }
}
