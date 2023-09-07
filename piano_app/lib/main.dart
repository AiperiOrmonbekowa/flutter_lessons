import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano_app/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.landscapeRight, DeviceOrientation.landscapeLeft]);
  runApp(const MyApp());
}
