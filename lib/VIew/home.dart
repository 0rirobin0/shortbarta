import 'package:flutter/material.dart';
import 'package:shortbarta/VIew/NewsContainer.dart';
import 'package:shortbarta/FetchingNews.dart';


class homescreen extends StatefulWidget {
  const homescreen({super.key});


  @override
  State<homescreen> createState() => _homescreenState();

}

class _homescreenState extends State<homescreen> {

  //
  getdata() async
  {
    FetchingNews intance= FetchingNews();
    await intance.getnews();
    print(intance.title);

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   getdata();


  }








  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:Text("ShortBarta",style: TextStyle(fontWeight: FontWeight.bold),)),

      ),
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
