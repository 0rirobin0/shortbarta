import 'package:flutter/material.dart';
import 'package:shortbarta/Newsdatamodel.dart';
import 'package:shortbarta/VIew/NewsContainer.dart';
import 'package:shortbarta/FetchingNews.dart';




class homescreen extends StatefulWidget {
  const homescreen({super.key});


  @override
  State<homescreen> createState() => _homescreenState();

}

class _homescreenState extends State<homescreen> {

  //variable
  late Newsdatamodel article;

   GetNews() async {

     article= await FetchingNews.getnews();
     setState(() {

     });
  }

    @override
  void initState(){

    super.initState();
    GetNews();

  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child:Text("ShortBarta",style: TextStyle(fontWeight: FontWeight.bold),)),

      ),
      body: PageView.builder(

          scrollDirection: Axis.vertical,
          onPageChanged: (value){
            GetNews();
          },
          itemBuilder:(Context,Index){

          //page change er sathe sathe call hbe r new new data dibe


             return NewsContainer(

               imgurl:article.imgUrl,
             newshead: article.newsHead,
             newsurl: article.newsUrl,
             newsdes: article.newsDes);

          }





      ),


    );
  }
}
