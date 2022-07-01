import 'package:pathprov/src/demo.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import '/src/demo2.dart';

void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(Demo());
}

