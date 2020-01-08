
import 'package:flutter/material.dart';
import 'delta_clock.dart';
import 'customizer.dart';
import 'model.dart';

void main() {
  runApp(ClockCustomizer((ClockModel model) => DeltaClock(model)));
}

