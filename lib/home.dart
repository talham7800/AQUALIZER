import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp/water_data_show.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({Key? key}) : super(key: key);

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: accountDetails(),
    ));
  }
}
