import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp/widget/drawer.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final centerTextStyle = const TextStyle(
    fontSize: 20,
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );

  late ValueNotifier<double> valueNotifier;
  late ValueNotifier<double> valueNotifier1;
  late ValueNotifier<double> valueNotifier2;
  late ValueNotifier<double> valueNotifier3;

  //double a = double.parse(data.toString());

  //var a=int.parse(ph);

  @override
  void initState() {
    super.initState();
    // valueNotifier = ValueNotifier(a);
    valueNotifier1 = ValueNotifier(0);
    valueNotifier2 = ValueNotifier(0);
    valueNotifier3 = ValueNotifier(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.8,
          color: Colors.white,
          child: customDrawer()),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        toolbarHeight: 50.0,
        title: Container(
            height: 30.0,
            child: Text(
              'AQUALYSER',
              style: TextStyle(
                  color: Color(0xff004899), fontWeight: FontWeight.bold),
            )),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/123.jpg"), fit: BoxFit.fitHeight)),

          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //   begin: Alignment.topCenter,
          //   end: Alignment.bottomCenter,
          //   colors: [
          //     Colors.blue,
          //     Colors.cyan,
          //     Colors.lightBlueAccent,
          //     //Colors.blue,
          //   ],
          // )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    //color: Colors.amberAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 10.0), //(x,y)
                            blurRadius: 10.0,
                            spreadRadius: 5),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text("pH Level Monitor\n"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
                          child: SimpleCircularProgressBar(
                            size: 100,
                            fullProgressColor: Colors.red,
                            valueNotifier: valueNotifier,
                            progressStrokeWidth: 10,
                            backStrokeWidth: 10,
                            mergeMode: true,
                            startAngle: 0,
                            onGetText: (value) {
                              return Text(
                                '${value.toInt()}pH',
                                style: centerTextStyle,
                              );
                            },
                            progressColors: const [Colors.cyan, Colors.purple],
                            backColor: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    //color: Colors.amberAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 10.0), //(x,y)
                            blurRadius: 10.0,
                            spreadRadius: 5),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "Turbidity Level \nMonitor",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
                          child: SimpleCircularProgressBar(
                            size: 100,
                            valueNotifier: valueNotifier1,
                            progressStrokeWidth: 10,
                            backStrokeWidth: 10,
                            mergeMode: true,
                            startAngle: 0,
                            onGetText: (value) {
                              return Text(
                                '${value.toInt()}',
                                style: centerTextStyle,
                              );
                            },
                            progressColors: const [Colors.cyan, Colors.purple],
                            backColor: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 200,
                    //color: Colors.amberAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 10.0), //(x,y)
                            blurRadius: 10.0,
                            spreadRadius: 5),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "Conductivity Level \nMonitor",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
                          child: SimpleCircularProgressBar(
                            size: 100,
                            valueNotifier: valueNotifier2,
                            progressStrokeWidth: 10,
                            backStrokeWidth: 10,
                            mergeMode: true,
                            startAngle: 0,
                            onGetText: (value) {
                              return Text(
                                '${value.toInt()}',
                                style: centerTextStyle,
                              );
                            },
                            progressColors: const [Colors.cyan, Colors.purple],
                            backColor: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    //color: Colors.amberAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 10.0), //(x,y)
                            blurRadius: 10.0,
                            spreadRadius: 5),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text("ORP Level Monitor\n"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
                          child: SimpleCircularProgressBar(
                            size: 100,
                            valueNotifier: valueNotifier3,
                            progressStrokeWidth: 10,
                            backStrokeWidth: 10,
                            mergeMode: true,
                            startAngle: 0,
                            onGetText: (value) {
                              return Text(
                                '${value.toInt()}',
                                style: centerTextStyle,
                              );
                            },
                            progressColors: const [Colors.cyan, Colors.purple],
                            backColor: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      //var ph;
                      //HttpServices().phLevel(ph);
                    },
                    child: Container(
                      height: 100,
                      width: 100,
                      color: Colors.amberAccent,
                    ),
                  ),
                  Container(
                    height: 200,
                    //color: Colors.amberAccent,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2, 10.0), //(x,y)
                            blurRadius: 10.0,
                            spreadRadius: 5),
                      ],
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Text(
                            "Conductivity Level \nMonitor",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30.0, right: 30.0, bottom: 20.0, top: 20.0),
                          child: SimpleCircularProgressBar(
                            size: 100,
                            valueNotifier: valueNotifier2,
                            progressStrokeWidth: 10,
                            backStrokeWidth: 10,
                            mergeMode: true,
                            startAngle: 0,
                            onGetText: (value) {
                              return Text(
                                '${value.toInt()}',
                                style: centerTextStyle,
                              );
                            },
                            progressColors: const [Colors.cyan, Colors.purple],
                            backColor: Colors.black.withOpacity(0.4),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
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

// class ph {
//   final int phvalue;
//   ph(this.phvalue);
// }
