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
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  int fontSize = 300;
  int max = 500;
  int min = 50;

  int colorRed = 0;
  int colorGreen = 0;
  int colorBlue = 0;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter State'),
          actions: [
            IconButton(
              icon: const Icon(Icons.remove),
              onPressed: () {
                setState(() {
                  if(fontSize <= max && fontSize >= min){
                    fontSize -= 20;
                  }
                });
              },
            ),
            IconButton(
              icon: const Text('S'),
              onPressed: () {
                setState(() {
                  fontSize = 100;
                });
              },
            ),
            IconButton(
              icon: const Text('M'),
              onPressed: () {
                setState(() {
                  fontSize = 300;
                });
              },
            ),
            IconButton(
              icon: const Text('L'),
              onPressed: () {
                setState(() {
                  fontSize = 500;
                });
              },
            ),
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {
                setState(() {
                  if(fontSize <= max && fontSize >= min){
                    fontSize += 20;
                  }
                });
              },
            ),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: Icon(
                  Icons.lock_clock,
                  size: fontSize.toDouble(),
                  color: Color.fromRGBO(colorRed, colorGreen, colorBlue, 1)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.red,
                      value: colorRed.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                        colorRed = value.toInt();                 
                        });
                      },
                    ),
                  ),
                  Text(
                    '$colorRed',
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.green,
                      value: colorGreen.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                        colorGreen = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$colorGreen',
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Slider(
                      activeColor: Colors.blue,
                      value: colorBlue.toDouble(),
                      min: 0,
                      max: 255,
                      onChanged: (value) {
                        setState(() {
                        colorBlue = value.toInt();
                        });
                      },
                    ),
                  ),
                  Text(
                    '$colorBlue',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}