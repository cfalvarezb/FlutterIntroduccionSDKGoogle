//Se realizo con escibiendo mateapp
import 'package:flutter/material.dart';
import 'package:componentes/src/pages/home_temp.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp()
    );
  }
}