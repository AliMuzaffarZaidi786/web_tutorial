
import 'package:flutter/material.dart';

import 'custom_widget.dart';

class AdminPanel extends StatefulWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:  [
          CustomTextField(labelText: 'widget name', onSaved: (val) {  },),
          CustomTextField(labelText: 'details', onSaved: (val) {  },),
          CustomTextField(labelText: 'example code', onSaved: (val) {  },),

        ],
      ),
    );
  }
}
