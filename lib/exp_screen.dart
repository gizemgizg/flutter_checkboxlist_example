import 'package:flutter/material.dart';

import 'checkbox_widget.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  @override
  _ExampleScreenState createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return CheckBoxGroupWidget(list: [
      CheckBoxState(title: "Anneler Günü"),
      CheckBoxState(title: "Babalar Günü"),
      CheckBoxState(title: "Atatürk Haftası"),
      CheckBoxState(title: "Cumhuriyet Bayramı"),
      CheckBoxState(title: "Çevre Koruma Haftası"),
      CheckBoxState(title: "Dünya Çocuk Günü"),
      CheckBoxState(title: "Dünya Kitap Günü"),
      CheckBoxState(title: "Dünya Tiyatrolar Günü"),
    ],);
  }
}
