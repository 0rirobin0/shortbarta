import 'package:flutter/material.dart';

class Readdetails extends StatelessWidget {
  String? newsurl;


  Readdetails({super.key,   //constructor
  required this.newsurl
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Center(child:Text("ShortBarta",style: TextStyle(fontWeight: FontWeight.bold),)),

      ),
      body: Center(

        child:Text("Web View"),
      ),



    );
  }
}
