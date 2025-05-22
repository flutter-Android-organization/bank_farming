import 'package:flutter/cupertino.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      value: _switchValue,
      onChanged: (bool newValue) {
        setState(() {
          _switchValue = newValue;
        });
      },
    );
  }
}