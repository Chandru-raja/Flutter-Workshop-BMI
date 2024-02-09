import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color, this.Widcard});
  final Color color;
  final Widget? Widcard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      child: Widcard,
    );
  }
}
