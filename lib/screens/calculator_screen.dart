import 'package:flutter/material.dart';

import '../data/calculator_data.dart';
import '../models/calculator_item.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  /// will be refactor code in the next step
  double _result = 0.0;
  double _firstNumber = 0.0;
  double _secondNumber = 0.0;

  void setFirstNumber(double firstNumber) {
    _firstNumber = firstNumber;
  }

  void setSecondNumber(double secondNumber) {
    _secondNumber = secondNumber;
  }

  void add() {
    _result = _firstNumber + _secondNumber;
  }

  void subtract() {
    _result = _firstNumber - _secondNumber;
  }

  void multiply() {
    _result = _firstNumber * _secondNumber;
  }

  void divide() {
    _result = _firstNumber / _secondNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                constraints: BoxConstraints.expand(),
                color: Colors.grey[800],
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    _result.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 7,
              child: Container(
                color: Colors.transparent,
                constraints: BoxConstraints.expand(),
                child: GridView.builder(
                    itemCount: buttonItems.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 90, crossAxisCount: 4),
                    itemBuilder: (BuildContext ctx, index) {
                      return GestureDetector(
                        onTap: () {
                          print('Button Clicked');
                          buttonItems[index].buttonType;
                          if (buttonItems[index].buttonType ==
                              ButtonType.number) {
                            setState(() {
                              _result = _result * 10 +
                                  int.parse(buttonItems[index].buttonValue);
                            });
                          } else if (buttonItems[index].buttonType ==
                              ButtonType.clear) {
                            setState(() {
                              _result = 0;
                            });
                          } else if (buttonItems[index].buttonType ==
                              ButtonType.operator) {
                            setState(() {
                              _result = 0;
                            });
                          }
                        },
                        child: Container(
                            constraints: BoxConstraints.expand(),
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                              border: Border.all(color: Colors.grey[500]!),
                            ),
                            child: Center(
                              child: Text(
                                buttonItems[index].buttonValue,
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
