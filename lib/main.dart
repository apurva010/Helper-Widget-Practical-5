import 'package:flutter/material.dart';
import 'package:helperwidgets/helperWidget/helper_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helper Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HelperWidgets(),
    );
  }
}
