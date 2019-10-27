import 'dart:ui';

import 'package:bmi_calculator/Constants.dart';
import 'package:bmi_calculator/input_page.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'input_page.dart';

class ResultsPage extends StatefulWidget {
  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 70, 0, 10),
                child: Text(
                  'Result',
                  style: kBoldTextStyle,
                  textAlign: TextAlign.end,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kActiveCardColor,
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(
                            Calculator.result(),
                            style: kBoldTextStyle.copyWith(
                                fontSize: 30, color: Colors.green),
                          ),
                          Text(
                            Calculator.returnBMI().toStringAsFixed(1),
                            style: kBoldTextStyle.copyWith(fontSize: 100),
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                            child: Text(
                              status,
                              textAlign: TextAlign.center,
                              style: kLabelTextStyle,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Container(
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: kBoldTextStyle.copyWith(
                        fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                width: double.infinity,
                color: kBottomBarColor,
                height: kBottomBarHeight + 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
