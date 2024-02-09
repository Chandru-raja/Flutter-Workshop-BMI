import 'package:flutter/material.dart';

import 'constants.dart';

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
