import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF006f65),
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.red)),
              Expanded(
                flex: 2,
                child: Container(
                  color: const Color(0xFF009788),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(width: 80, height: 80, color: Colors.yellow),
                        Container(
                          width: 80,
                          height: 80,
                          color: const Color(0xFF4CAF50),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(child: Container(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}
