import 'package:flutter/material.dart';
import 'package:flutter_provider/view/home_screan.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context){


    return MaterialApp(
        home:HomeScrean()
    );
  }
}