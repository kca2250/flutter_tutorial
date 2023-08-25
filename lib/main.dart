import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Spacer(
                flex: 2,
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Placeholder(
                  fallbackHeight: 100,
                  fallbackWidth: 100,
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(
                        flex: 2,
                      ),
                      Text(
                        '** ℃',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '** ℃',
                        style: TextStyle(fontSize: 18, color: Colors.red),
                      ),
                      Spacer(
                        flex: 2,
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Center(
                child: Row(
                  children: [
                    Spacer(
                      flex: 2,
                    ),
                    Text(
                      'Close',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Reload',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    )
                  ],
                ),
              ),
              Spacer(
                flex: 2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
