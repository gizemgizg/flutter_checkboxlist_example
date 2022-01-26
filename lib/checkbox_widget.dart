import 'package:flutter/material.dart';


class CheckBoxGroupWidget extends StatefulWidget {

  final  List<CheckBoxState> list;
  const CheckBoxGroupWidget({Key? key, required this.list}) : super(key: key);

  @override
  _CheckBoxGroupWidgetState createState() => _CheckBoxGroupWidgetState();
}

class _CheckBoxGroupWidgetState extends State<CheckBoxGroupWidget> {

  final allSelected = CheckBoxState(title: "Tümünü Seç");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 500,
        child: ListView(
          physics: ClampingScrollPhysics(),
          children: [
            buildGroupCheckBox(allSelected),
            ...widget.list.map(buildSingleCheckBox).toList()
          ],

        ),
      ),
    );
  }

  Widget buildSingleCheckBox(CheckBoxState checkBoxState){
    return CheckboxListTile(
        title: Text(checkBoxState.title),
        controlAffinity: ListTileControlAffinity.leading,
        value: checkBoxState.value,
        onChanged: (value){
          print(widget.list.where((element) => element.value == true).toList().length);
          setState(() {
            checkBoxState.value = value!;

          });
        });
  }

  Widget buildGroupCheckBox(CheckBoxState checkBoxState){
    return CheckboxListTile(

        title: Text(checkBoxState.title),
        controlAffinity: ListTileControlAffinity.leading,
        value: checkBoxState.value,
        onChanged: toggleGroupCheckBox);
  }


  void toggleGroupCheckBox(bool? value) {
    if (value == null) return;
    setState(() {
      print(widget.list.where((element) => element.value == false).toList().length);
      allSelected.value = value;
      widget.list.forEach((element) => element.value = value);
    });

  }
}

class CheckBoxState{
  final String title;
  bool? value;

  CheckBoxState({
    required this.title,
    this.value = false
  });
}
