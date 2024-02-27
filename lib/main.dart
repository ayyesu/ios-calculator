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
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(2.0, 50.0, 10.0, 0.0),
                  child: Text(
                    '0',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 80.0,
                    ),
                  ),
                ),
              ],
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
                        btnText: '×',
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

Widget calcButton({btnText, btnBackground, btnTextColor}) {
  return ElevatedButton(
    onPressed: () {},
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
