import 'package:flutter/material.dart';
import 'Discussion.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    title: 'My App',
    debugShowCheckedModeBanner:false,
    home:discussion(),
    );

  }
}

