import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;

  CustomButton({required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed();
      },
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF1E1E1E),
        fixedSize: Size(120, 40),
      ),
      child: Text(
        buttonText,
        style: TextStyle(
          fontFamily: 'PoppinsBold',
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF353434),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'CONTADOR',
                style: TextStyle(
                  fontFamily: 'PoppinsBold',
                  color: Colors.white,
                  fontSize: 64,
                ),
              ),
              SizedBox(height: 150),
              Text(
                '$counter',
                style: TextStyle(
                  fontFamily: 'PoppinsThin',
                  color: Colors.white,
                  fontSize: 200,
                ),
              ),
              SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    buttonText: '-',
                    onPressed: () {
                      decrementCounter();
                    },
                  ),
                  SizedBox(width: 5),
                  CustomButton(
                    buttonText: 'RESET',
                    onPressed: () {
                      resetCounter();
                    },
                  ),
                  SizedBox(width: 5),
                  CustomButton(
                    buttonText: '+',
                    onPressed: () {
                      incrementCounter();
                    },
                  ),
                ],
              ),
              SizedBox(height: 50),
              Text(
                'By Eric Quiles Silgado',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
