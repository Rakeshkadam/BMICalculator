import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'card.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {

  ResultsPage({this.bmiResult, this.interpretation, this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(child: Container(
            padding: EdgeInsets.all(15),
            alignment: Alignment.bottomLeft,
            child: Text("Your Result", style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: activeCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultText.toUpperCase(), style: kResultTextStyle,),
                  Text(bmiResult, style: kBMIResultStyle,),
                  Text(interpretation, style: kBodyTextStyle, textAlign: TextAlign.center,),
                ],
              ),
              ),),
            BottomButton(
              onTap: (){
              Navigator.pop(context);
            },
            buttonTitle: "RE-CALCULATE",
          ),
        ],
        
      ),
    );
  }
}