import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class LinearChar extends StatelessWidget {
  const LinearChar({super.key, required this.title, required this.value});

  final String title;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SfLinearGauge(
          orientation: LinearGaugeOrientation.horizontal,
          animationDuration: 2100,
          animateRange: true,
          maximum: 100,
          minimum: 0,
          ranges: const <LinearGaugeRange>[
            LinearGaugeRange(
              startValue: 0,
              endValue: 100,
              color: Colors.grey,
            ),
          ],
          markerPointers: [
            LinearShapePointer(
              value: value,
              width: 20,
              height: 14,
              animationDuration: 2100,
              animationType: LinearAnimationType.bounceOut,
              position: LinearElementPosition.outside,
              color: Colors.green,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
         Text(
          '$title : $value',
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
