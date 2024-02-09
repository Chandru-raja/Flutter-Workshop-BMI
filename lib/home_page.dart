import 'package:bmi_calculator/Result_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Icon_content.dart';
import 'Reusable_card.dart';
import 'Roundiconbutton.dart';
import 'calc_brain.dart';
import 'constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color malecc = kInactive;
  Color femalecc = kInactive;
  int height = 150;
  int weight = 35;
  int age = 19;

  void updatecolor(int gender) {
    if (gender == 1) {
      if (malecc == kInactive) {
        malecc = const Color(kFgcol);
      } else {
        malecc = kInactive;
      }
      femalecc = kInactive;
    } else {
      if (femalecc == kInactive) {
        femalecc = const Color(kFgcol);
      } else {
        femalecc = kInactive;
      }
      malecc = kInactive;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('BMI CALCULATOR')),
        backgroundColor: const Color(kBgcol),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updatecolor(1);
                    });
                  },
                  child: ReusableWidget(
                    color: malecc,
                    Widcard: IconContent(
                      icon: FontAwesomeIcons.mars,
                      txt: "MALE",
                    ),
                  ),
                )),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updatecolor(0);
                      });
                    },
                    child: ReusableWidget(
                      color: femalecc,
                      Widcard: IconContent(
                          icon: FontAwesomeIcons.venus, txt: "FEMALE"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableWidget(
              color: const Color(kFgcol),
              Widcard: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("HEIGHT", style: kCostomTxtbox),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: const TextStyle(
                            fontSize: 50,
                            fontWeight: kFontdef,
                            color: Colors.white70),
                      ),
                      const Text("cm", style: kCostomTxtbox),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        thumbShape: const RoundSliderThumbShape(
                          enabledThumbRadius: 15.0,
                        ),
                        trackHeight: 1),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 220,
                      activeColor: const Color(0xFFEB1555),
                      inactiveColor: const Color(0xFF8D8E98),
                      onChanged: (double newvalue) {
                        setState(() {
                          height = newvalue.round();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableWidget(
                    color: const Color(kFgcol),
                    Widcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kCostomTxtbox,
                        ),
                        Text(
                          weight.toString(),
                          style: const TextStyle(
                              fontSize: 50,
                              fontWeight: kFontdef,
                              color: Colors.white70),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              Onpressed: () {
                                setState(() {
                                  ++weight;
                                });
                              },
                              child: const Icon(FontAwesomeIcons.plus),
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              Onpressed: () {
                                setState(() {
                                  --weight;
                                });
                              },
                              child: const Icon(FontAwesomeIcons.minus),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableWidget(
                    color: const Color(kFgcol),
                    Widcard: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kCostomTxtbox,
                        ),
                        Text(
                          age.toString(),
                          style: const TextStyle(
                              fontSize: 50,
                              fontWeight: kFontdef,
                              color: Colors.white70),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              Onpressed: () {
                                setState(() {
                                  ++age;
                                });
                              },
                              child: const Icon(FontAwesomeIcons.plus),
                            ),
                            const SizedBox(width: 10),
                            RoundIconButton(
                              Onpressed: () {
                                setState(() {
                                  --age;
                                });
                              },
                              child: const Icon(FontAwesomeIcons.minus),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(40),
            ),
            margin: const EdgeInsets.all(10),
            child: TextButton(
              onPressed: () {
                Calc_Brain c = Calc_Brain(h: height, w: weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Result_Page(
                            result: c.calculateBMI(),
                            result1: c.getResult(),
                            adstr: c.getInterp())));
              },
              child: const Text("CALCULATE",
                  style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
