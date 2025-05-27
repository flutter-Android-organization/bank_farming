import 'package:bank_farming/src/constant/color_constant.dart';
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
      activeTrackColor: colOne,
      value: _switchValue,
      onChanged: (bool newValue) {
        setState(() {
          _switchValue = newValue;
        });
      },
    );
  }
}