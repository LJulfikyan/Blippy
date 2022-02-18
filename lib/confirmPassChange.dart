import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmPassChange extends StatefulWidget {
  const ConfirmPassChange({Key? key}) : super(key: key);

  @override
  _ConfirmPassChangeState createState() => _ConfirmPassChangeState();
}

class _ConfirmPassChangeState extends State<ConfirmPassChange> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Row(
          children: const [Text("Forgot Password"), Spacer(), Text('2/2')],
        ),
      ),
    );
  }
}
