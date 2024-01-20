class Newsdatamodel  {
  String imgUrl;
  String newsHead;
  String newsDes;
  String newsUrl;
  String pubDate;
  String source;

  Newsdatamodel(
      {required this.imgUrl,
        required this.newsDes,
        required this.newsHead,
        required this.newsUrl,
        required this.pubDate,
        required this.source});

  static Newsdatamodel fromAPItoApp(Map<String,dynamic> article) {
    return Newsdatamodel(

        imgUrl: article["image_url"] ?? "https://images.unsplash.com/photo-1690050070131-bd454d501225?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        newsDes: article["description"] ?? "   Loading......",
        newsHead: article["title"]  ?? "    Loading......",
        newsUrl: article["link"] ?? "https://news.google.com/topstories?hl=en-IN&gl=IN&ceid=IN:en",
        pubDate: article["pubDate"] ?? " ",
        source: article["source_id"] ??" "
    )

    ;
  }
}