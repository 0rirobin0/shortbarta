import 'package:flutter/material.dart';
import 'package:shortbarta/VIew/NewsContainer.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: 10,
          scrollDirection: Axis.vertical,
          controller: PageController(initialPage: 5),
          itemBuilder:(Context,Index){
             return NewsContainer(imgurl: "http://tinyurl.com/3wp2b4pp",
             newshead: "Captian Miller",
             newsurl: "http://tinyurl.com/m9tew39y",
             newsdes: "Director Arun Matheswaran’s ‘Captain Miller’, starring Dhanush,"
                 " Priyanka Arulmohan and others, is a hard-hitting tale about oppression and freedom."
                 " With terrific performances and GV Prakash’s music, "
                 "the film is a brilliant watch in theatres.",);

          }





      ),


    );
  }
}
