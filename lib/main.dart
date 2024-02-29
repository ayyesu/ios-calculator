import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Calculator(),
  ));
}

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String displayNum = '0';
  String? btnText;

  dynamic num1 = 0;
  dynamic num2;

  String? operator;
  String? cache;

  String results = '0';

  void operation(String btnText) {
    switch (btnText) {
      case 'AC':
        setState(() {
          num1 = 0;
          num2 = null;
          operator = null;
          results = '0';
          displayNum = results;
        });
        break;

      case '+/-':
        if (displayNum != '0') {
          double num = double.parse(displayNum);
          num *= -1;
          results = num.toStringAsFixed(0);

          setState(() {
            displayNum = results;
          });
        }
        break;

      case '%':
        num1 = int.parse(displayNum);
        double num = (num1 / 100);
        results = num.toString();
        setState(() {
          displayNum = results;
          cache = '$num1 %';
        });
        break;

      case '÷':
      case 'x':
      case '-':
      case '+':
        // Handling other arithmetic operations:
        operator = btnText;
        num1 = int.parse(displayNum);
        setState(() {
          displayNum = '$num1';
        });
        break;

      case '=':
        // Handling calculation based on stored operator and operands:
        if (operator != null && num1 != 0) {
          num2 = int.parse(displayNum);
          dynamic num;
          switch (operator) {
            case '÷':
              if (num2 == 0) {
                // Handle division by zero error
                results = "Error";
              } else {
                num = num1 / num2!;
              }
              break;
            case 'x':
              num = (num1 * num2!);
              break;
            case '-':
              num = (num1 - num2!);
              break;
            case '+':
              num = (num1 + num2!);
              break;
          }
          if (results == "Error") {
            results;
          } else {
            results = num.toString();
          }

          setState(() {
            displayNum = results;
            operator = null;
            num1 = 0;
            num2 = null;
            cache = null;
          });
        }
        break;

      default:
        // Handle number buttons (0-9):
        setState(() {
          if (displayNum == '0' || operator != null) {
            displayNum = btnText;
          } else {
            displayNum += btnText;
          }
        });
    }
  }

  Widget calcButton({btnText, btnBackground, btnTextColor}) {
    return ElevatedButton(
      onPressed: () => operation(btnText),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        backgroundColor: btnBackground,
      ),
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: btnBackground,
        child: Text(
          btnText,
          style: TextStyle(
            color: btnTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(2.0, 50.0, 10.0, 0.0),
                    child: Text(
                      displayNum,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 80.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            // Row 1
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Button AC
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: 'AC',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.black),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button +/-
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '+/-',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.black),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button %
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '%',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.black),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button ÷
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '÷',
                        btnBackground: Colors.orange,
                        btnTextColor: Colors.white),
                  ),
                ],
              ),
            ),
            // Row 2
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Button 7
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '7',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button 8
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '8',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button 9
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '9',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button ×
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: 'x',
                        btnBackground: Colors.orange,
                        btnTextColor: Colors.white),
                  ),
                ],
              ),
            ),
            // Row 3
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Button 4
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '4',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button 5
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '5',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button 6
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '6',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button -
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '-',
                        btnBackground: Colors.orange,
                        btnTextColor: Colors.white),
                  ),
                ],
              ),
            ),
            // Row 4
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Button 1
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '1',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button 2
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '2',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button 3
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '3',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button +
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '+',
                        btnBackground: Colors.orange,
                        btnTextColor: Colors.white),
                  ),
                ],
              ),
            ),
            // Row 5
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Button 0
                  SizedBox(
                    height: 80,
                    width: 168,
                    child: calcButton(
                        btnText: '0',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button .
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '.',
                        btnBackground: Colors.grey,
                        btnTextColor: Colors.white),
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  // Button =
                  SizedBox(
                    height: 80,
                    width: 80,
                    child: calcButton(
                        btnText: '=',
                        btnBackground: Colors.orange,
                        btnTextColor: Colors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
