//API https://newsdata.io/api/1/news?country=bd&apikey=pub_36345902290391243545af24fb1eef349dbcb


import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';
import 'dart:math';

import 'package:shortbarta/Newsdatamodel.dart';
class FetchingNews
{
  static List? newslist;


  static Future<Newsdatamodel> getnews() async {

  try {
    Response r = await get(Uri.parse(
        "https://newsdata.io/api/1/news?country=bd&apikey=pub_36345902290391243545af24fb1eef349dbcb"));
    Map News = json.decode(
        utf8.decode(r.bodyBytes)); //using to decode bangla font from Json
    newslist = News['results'];
  }
  catch(e)
    {

    }

  Map data=newslist![0];

  //To select random news article
  //list theke jekhn random akt amap data select kore var article e rakha hosce
  final random=Random();
  var article = newslist![random.nextInt(newslist!.length)];

   print(article['title']);
  //asigning data to DataModel
  return Newsdatamodel.fromAPItoApp(article);


  }



}