
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewReaddetails extends StatefulWidget {
  String? newsUrl;

  // Constructor to receive the news URL
  webviewReaddetails({required this.newsUrl});

  @override
  State<webviewReaddetails> createState() => _ReadDetailsState();
}

class _ReadDetailsState extends State<webviewReaddetails> {
  late final WebViewController controller;

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.newsUrl.toString()));
    
  }

  
  
  
  

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        title: Text('ShortBarta'),
      ),
      body: WebViewWidget(controller: controller,

      ),
    );
  }
}
