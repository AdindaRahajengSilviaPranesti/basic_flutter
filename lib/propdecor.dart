import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Contoh Configuration")),
        body: Container(
          decoration: BoxDecoration(
            color: Color(0xFF7c94b6), // Perbaikan format warna
            image: DecorationImage(
              image: NetworkImage(
                'http://4.bp.blogspot.com/-Mx-FdFW2PtQ/TmOZa-ZkKOI/AAAAAAAAAzY/3CnOMq1WgL4/s1600/red_panda_2.jpg',
              ),
              fit: BoxFit.fitWidth,
            ),
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          height: 200,
          width: 300,
          margin: EdgeInsets.all(20),
        ),
      ),
    );
  }
}
