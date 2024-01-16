import 'package:flutter/material.dart';
import 'package:shortbarta/VIew/home.dart';
import 'VIew/Loading.dart';
import 'VIew/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ShortBarta',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,

      ),



   //routes for splash to home screen

      initialRoute: "/", //splash screen
      routes: {
        "/" : (context) => const Loading(),
        "/homescreen" :(context) => const homescreen(),
      },
    );
  }
}
