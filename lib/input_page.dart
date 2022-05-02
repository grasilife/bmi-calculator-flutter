import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const double bottomContainerHeight = 80.0;
const Color activeCardColor = Color(0xFF1D1E33);
const Color bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(
                  colour: activeCardColor,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.mars,
                        size: 80.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        "MALE",
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF8D8E98)),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
            ],
          )),
          Expanded(
            child: ReusableCard(colour: activeCardColor),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
              Expanded(
                child: ReusableCard(colour: activeCardColor),
              ),
            ],
          )),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  const ReusableCard({@required this.colour, this.cardChild});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration:
          BoxDecoration(color: colour, borderRadius: BorderRadius.circular(10)),
    );
  }
}
