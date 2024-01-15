import 'package:flutter/material.dart';
import 'package:shortbarta/VIew/Readdetails.dart';

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
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

                 Image.network(imgurl,
                  fit: BoxFit.cover,
                  height: 300,
                  width: MediaQuery.of(context).size.width,

                             ),

          const SizedBox(height: 5,),
          Text(
            newshead,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          const SizedBox(height: 10,),

          Text(newsdes,style: const TextStyle(fontSize: 16),),
          const Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: OutlinedButton(onPressed: (){
                 print('Go to this link $newsurl');
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Readdetails(newsurl: newsurl)));


                }, child: const Text("ReadMore")),
              ),
            ]

          ),





        ],



      ),



    );
  }
}
