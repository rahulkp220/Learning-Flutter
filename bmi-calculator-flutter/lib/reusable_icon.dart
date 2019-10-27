import 'package:flutter/material.dart';
import 'Constants.dart';

class ReusableIcon extends StatelessWidget {
  final String label;

  final IconData icon;
  ReusableIcon(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 100,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label, style: kLabelTextStyle)
      ],
    );
  }
}
