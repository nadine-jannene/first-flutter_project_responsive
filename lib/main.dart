import 'package:flutter/material.dart';
import 'package:udemy_flutter/home_screen.dart';

void main()
{
  runApp(MyApp());


}

// Stateless
// Stateful

// class MyApp

class MyApp extends StatelessWidget
{

  // 1 constructor MuApp()
  // 2 build
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
  }

}