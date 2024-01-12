import 'package:flutter/material.dart';

class NewsContainer extends StatelessWidget {
  String newshead;
  String newsdes;
  String imgurl;
  String newsurl;




  NewsContainer({super.key,
    required this.imgurl,
    required this.newsdes,
    required this.newshead,
    required this.newsurl,


  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(imgurl),
          Text(newshead),
          Text(newsdes),
          OutlinedButton(onPressed: (){
            


          }, child: Text("ReadMore"))




        ],
      ),



    );
  }
}
