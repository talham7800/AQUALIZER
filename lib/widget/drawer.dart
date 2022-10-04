import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/services/firebase_services.dart';

class customDrawer extends StatelessWidget {
  customDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: double.infinity,
            color: Colors.blue,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0, left: 10.0),
                  child: Text(
                    'Hello Muhammad Talha',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            )),
        SizedBox(
          height: 20.0,
        ),
        GestureDetector(
          onTap: () {
            AuthenticationService().Signout(
              context,
            );
          },
          child: Text(
            'Logout',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.red,
              fontSize: 20,
            ),
          ),
        ),
        // Container(
        //   height: 200,
        //   child: ListView(
        //     children: [
        //       ListTile(
        //         title: const Text('Item 1'),
        //         onTap: () {
        //           // Update the state of the app.
        //           // ...
        //         },
        //       ),
        //       ListTile(
        //         title: const Text('Item 2'),
        //         onTap: () {
        //           // Update the state of the app.
        //           // ...
        //         },
        //       ),
        //     ],
        //   ),
        // )
      ],
    );
  }
}
