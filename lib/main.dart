import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mindmemo_app/mindmemo_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MindMemoApp());
}