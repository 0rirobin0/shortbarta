import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}



class _LoadingState extends State<Loading> {

  void goto()
  {
    Future.delayed(const Duration(seconds: 2),() {
      Navigator.pushReplacementNamed(context, "/homescreen");

    });
  }



  @override
  void initState()  {
    goto();



    super.initState();
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Image.asset("Assets/Images/shortbarta.jpg"),
         const SpinKitChasingDots(
          color: Colors.deepPurple,
          size: 60.0,
        ),




          ],
        ),


      ),
    );
  }
}
