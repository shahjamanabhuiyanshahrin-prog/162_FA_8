import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  Widget smallBox(String text, Color color) {
    return Container(
      height: 80,
      width: 80,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }

  Widget bottomBox(String text, Color color) {
    return Container(
      height: 60,
      width: 120,
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column and Row Layout"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          // Top Row (1,2,3)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              smallBox("1", Colors.red),
              smallBox("2", Colors.green),
              smallBox("3", Colors.blue),
            ],
          ),

          // Large Container
          Container(
            height: 100,
            width: 300,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Text(
              "Large Container",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),

          // Bottom Row (Left, Right)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              bottomBox("Left", Colors.purple),
              bottomBox("Right", Colors.teal),
            ],
          ),
        ],
      ),
    );
  }
}