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

          SizedBox(height: 5,),
          Text(newshead,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(height: 10,),
          Text(newsdes,style: TextStyle(fontSize: 16),),
          Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: OutlinedButton(onPressed: (){
                 print('Go to this link $newsurl');


                }, child: Text("ReadMore")),
              ),
            ]

          ),





        ],



      ),



    );
  }
}
