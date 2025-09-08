import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row and Column',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Row and Column'),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Kotak(Colors.red, Icons.thumb_up, "Pesawat"),
              SizedBox(width: 20),
              Kotak(Colors.purple, Icons.thumb_up, "Hotel"),
              SizedBox(width: 20),
              Kotak(Colors.amber, Icons.thumb_up, "Kereta"),
              SizedBox(width: 20),
              Kotak(Colors.green, Icons.thumb_up, "Wisata"),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakBiruJempol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(color: Colors.black, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Icon(Icons.thumb_up, color: Colors.white, size: 40),
    );
  }
}

Widget Kotak(Color warna, IconData icon, desc) {
  return Container(
    width: 70,
    height: 70,
    decoration: BoxDecoration(
      color: warna,
      border: Border.all(color: Colors.black, width: 2),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Icon(icon, color: Colors.white, size: 40),
  );
}
