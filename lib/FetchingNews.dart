import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:math';
class FetchingNews
{
  List? newslist;
  String? title;
  String? des;
  String? imgurl;
  String? newsurl;


  Future getnews() async {
    Response r = await get(Uri.parse(
        "https://newsdata.io/api/1/news?country=bd&apikey=pub_36345902290391243545af24fb1eef349dbcb")) as Response;
    Map News = json.decode(utf8.decode(r.bodyBytes));
    newslist=News['results'];

    Map data=newslist![0];

    //To select random news article
    final random=new Random();
    var article =newslist![random.nextInt(newslist!.length)];


    //asigning data
    this.title=article['title'];




  }


}