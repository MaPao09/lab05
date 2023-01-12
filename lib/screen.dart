import 'package:flutter/material.dart';

class ShowBMI extends StatefulWidget {
  const ShowBMI(
      {super.key,
      required this.bminew,
      required this.weightnew,
      required this.heightnew});

  final double bminew;
  final String weightnew;
  final String heightnew;

  @override
  State<ShowBMI> createState() => _ShowBMIState();
}

class _ShowBMIState extends State<ShowBMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("แสดงค่า"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("ส่วนสูง "),
              Text(widget.weightnew),
              Text(" Cm"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("น้ำหนัก "),
              Text(widget.heightnew),
              Text(" Kg"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("BMI "),
              Text(widget.bminew.toStringAsFixed(3)),
            ],
          ),
        ],
      ),
    );
  }
}
