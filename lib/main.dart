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
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(2.0, 50.0, 5.0, 0.0),
                    child: Text(
                      '0',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60.0,
                      ),
                    ),
                  ),
                ],
              ),
             SizedBox(height: 20.0),
             Expanded(
               child: CircleAvatar(
                radius: 40.0,
                backgroundColor: Colors.grey,
                child: Text('AC')
               ),
             )
             
          ],
          
        )
        
        
       ),
    );
  }
}

