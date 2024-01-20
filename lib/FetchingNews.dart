//API https://newsdata.io/api/1/news?country=bd&apikey=pub_36345902290391243545af24fb1eef349dbcb


import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';
import 'dart:math';
import 'package:shortbarta/VIew/home.dart';
import 'package:shortbarta/Newsdatamodel.dart';


class FetchingNews
{
  static List? newslist;

  static int? index  ;
  static var article;
  static String? nextpage;
  static int? page=0;
  int a=0;


   static int? getindex(int Index)
    {
      index=Index;

    }




  static Future<Newsdatamodel> getnews() async {
    Response? r;
  try {


           r = await get(Uri.parse(
               "https://newsdata.io/api/1/news?country=bd&apikey=pub_36345902290391243545af24fb1eef349dbcb"));



    Map News = json.decode(utf8.decode(r!.bodyBytes));
    nextpage=News['nextpage'];//using to decode bangla font from Json
    newslist = News['results'];
  }
  catch(e)
    {
     print("NewsFetching Error!!!");
    }


  print(newslist!.length);

  // To select random news article
  // list theke jekhn random akt map data select kore var article e rakha hosce

   // final random=Random();
   // var article = newslist![random.nextInt(newslist!.length)];
  // var article = newslist![random.nextInt(newslist!.length)];

  int num =index!%10;

  var article = newslist![num!];

 print(index);
  print(num);
   print(article['title']);
  //asigning data to DataModel
  return Newsdatamodel.fromAPItoApp(article);


  }













}