import 'package:flutter/material.dart';
import 'package:fyp/services/httpservice.dart';
import 'package:fyp/widget/aquamodel.dart';
import 'package:provider/provider.dart';

class accountDetails extends StatelessWidget {
  const accountDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profile = Provider.of<HttpServices>(context);
    return FutureBuilder<WaterModel?>(
        future: profile.getphLevel(),
        builder: (c, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          if (!snapshot.hasData)
            return Align(
                alignment: Alignment.center,
                child: Text(
                  'Nothing to show here\nEmpty',
                  textAlign: TextAlign.center,
                ));
          if (snapshot.hasData) {
            return Container(
              child: Text(snapshot.data.toString()),
            );
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
