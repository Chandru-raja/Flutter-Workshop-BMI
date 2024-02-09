import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.child, required this.Onpressed});
  final Widget? child;
  final void Function() Onpressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: Onpressed,
      child: child,
      textStyle: kCostomTxtbox,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      elevation: 6.0,
      shape: CircleBorder(),
      fillColor: kroundcl,
    );
  }
}

// GestureDetector(
// onTap: () {
// Onpressed();
// },
// child: Container(
// padding: EdgeInsets.all(7),
// decoration: BoxDecoration(
// color: Colors.grey, borderRadius: BorderRadius.circular(50)),
// child: child,
// ),
// );
