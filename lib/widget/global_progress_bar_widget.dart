import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class ProgressBarWidget extends StatelessWidget {
  final String value;
  const ProgressBarWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleCircularProgressBar(
      size: 100,
      fullProgressColor: Colors.red,
      valueNotifier: ValueNotifier(double.parse(this.value)),
      progressStrokeWidth: 10,
      backStrokeWidth: 10,
      mergeMode: true,
      startAngle: 0,
      onGetText: (value) {
        return Text(this.value);
      },
      progressColors: const [Colors.cyan, Colors.purple],
      backColor: Colors.black.withOpacity(0.4),
    );
  }
}
