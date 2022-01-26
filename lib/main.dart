import 'package:flutter/material.dart';
import 'package:flutter_checkbox_list_exp/checkbox_widget.dart';

import 'exp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',

      home: ExampleScreen()
    );
  }
}