import 'dart:async';

import 'customizer.dart';
import 'model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DeltaClock extends StatefulWidget {
  const DeltaClock(this.clock);

  final ClockModel clock;
  @override
  State<StatefulWidget> createState() => _DeltaClockState();
}

class _DeltaClockState extends State<DeltaClock> {
  DateTime _dateTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width / 3.5;

    return Container(
      //TODO: Change color to gradient
      color: Colors.blueGrey,
      child: Center(
        child: Text(DateFormat('HH:mm').format(_dateTime),
            style: TextStyle(fontSize: fontSize)
            ),
      ),
    );
  }
}

