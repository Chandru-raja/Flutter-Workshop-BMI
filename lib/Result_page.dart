import 'package:flutter/material.dart';
import 'constants.dart';

class Result_Page extends StatelessWidget {
  Result_Page(
      {required this.result, required this.result1, required this.adstr});

  final String result;
  final String result1, adstr;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Color(kBgcol),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Text(
            "Your Result",
            style: kCostomBfont,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(11, 0, 11, 11),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                    ),
                    Text(
                      result1.toUpperCase(),
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.all(70),
                      child: Text(
                        result,
                        style: TextStyle(
                            fontSize: 90,
                            fontWeight: kFontdef,
                            color: Colors.white),
                      ),
                    ),
                    Text(
                      adstr,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(kFgcol),
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(40),
            ),
            margin: EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child:
                  Text("RE-CALCULATE", style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
