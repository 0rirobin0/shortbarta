
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Readdetails extends StatefulWidget {
  String? newsUrl;

  // Constructor to receive the news URL
  Readdetails({required this.newsUrl});

  @override
  State<Readdetails> createState() => _ReadDetailsState();
}

class _ReadDetailsState extends State<Readdetails> {
  late final WebViewController controller;

  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
          },
          onPageStarted: (String url) {},
          onPageFinished: (String url) {},
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
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
