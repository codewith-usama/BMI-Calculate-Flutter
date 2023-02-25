import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import '../components/bottom_button.dart';
import '../components/app_bar.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({@required this.calculateBMI, @required this.result, @required this.interpretation});

  final String calculateBMI;
  final String result;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: kResultPageTitle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusablaCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result,
                    style: kResultTextStyle,
                  ),
                  Text(
                    calculateBMI,
                    style: kBMITextStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          BottomButton(onTap: () {
            Navigator.pop(context);
          }, text: "RE-CALCULATE")
        ],
      ),
    );
  }
}
