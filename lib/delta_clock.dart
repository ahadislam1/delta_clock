import 'dart:async';

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
  Timer _timer;

  @override
  void initState() {
    super.initState();
    widget.clock.addListener(_updateTime);
    _updateTime();
  }



  @override
  Widget build(BuildContext context) {
    final fontSize = MediaQuery.of(context).size.width / 3.5;

    return Container(
      //TODO: Change color to gradient
      color: Colors.deepOrange,
      child: Center(
        child: Text(DateFormat('HH:mm').format(_dateTime),
            style: TextStyle(fontSize: fontSize)),
      ),
    );
  }

  void _updateTime() {
    setState(() {
      _dateTime = DateTime.now();
      _timer = Timer(
        Duration(minutes: 1) -
            Duration(seconds: _dateTime.second) -
            Duration(milliseconds: _dateTime.millisecond),
        _updateTime,
      );
    });
  }
}
