import 'package:flutter/material.dart';
import 'package:motorcycle_sale_flutter_app/motorcycle_data/motorcycle_screen_data.dart';
import 'package:motorcycle_sale_flutter_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
