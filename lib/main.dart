import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                '0',
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
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF1E1E1E),
                      fixedSize: Size(120, 40),
                    ),
                    child: Text(
                      '-',
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF201F1F),
                      fixedSize: Size(120, 40),
                    ),
                    child: Text(
                      'RESET',
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 5),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF1E1D1D),
                      fixedSize: Size(120, 40),
                    ),
                    child: Text(
                      '+',
                      style: TextStyle(
                          fontFamily: 'PoppinsBold',
                          fontSize: 20,
                          color: Colors.white),
                    ),
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
