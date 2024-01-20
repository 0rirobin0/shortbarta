import 'package:flutter/material.dart';
import 'package:shortbarta/VIew/webviewReaddetails.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsContainer extends StatelessWidget {
  String newshead;
  String newsdes;
  String imgurl;
  String newsurl;
  String pubDate;
  String source;




  NewsContainer({super.key,
    required this.imgurl,
    required this.newsdes,
    required this.newshead,
    required this.newsurl,
    required this.pubDate,
    required this.source,


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
         //publication date time


         //Publication Date
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [
            Container(
               padding: EdgeInsets.symmetric(horizontal: 8),
               child: Text(pubDate),

            ),
          ],
          ),



          const SizedBox(height: 5,),
          Text(
            newshead,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          const SizedBox(height: 10,),

          Text(
            //checking news overlimit charecter

             newsdes.length>=300 ? newsdes.substring(0,300)+"..." :
             newsdes.substring(0,newsdes.length-5)+"...",style: const TextStyle(fontSize: 16),),


            //source
            Row(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                        child: Text("Source: $source ",style: TextStyle(fontSize: 16),)),

              ],
            ),
            Spacer(),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: OutlinedButton(onPressed: (){
                 print('Go to this link $newsurl');
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>webviewReaddetails(newsUrl: newsurl)));


                }, child: const Text("Read More",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),)),
              ),
            ]

          ),





        ],



      ),



    );
  }
}
