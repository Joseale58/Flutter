import 'package:flutter/material.dart';
import 'package:menu_app/vistas/ChefPage.dart';
import 'package:menu_app/vistas/DishPage.dart';
import 'package:menu_app/vistas/IndexPage.dart';
import 'package:menu_app/vistas/LoginPage.dart';
import 'package:menu_app/vistas/OrdenPage.dart';
import 'package:menu_app/vistas/ReservaPage.dart';
import 'package:menu_app/vistas/ChefPage.dart';
import 'package:menu_app/vistas/CarritoPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Reaturante',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(
        backgroundColor: Color(0xFFBFD6D9),
        body: IndexPage(),
      ),
    );
  }
}

 