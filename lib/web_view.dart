import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class webview extends StatefulWidget {
  const webview({super.key});

  @override
  State<webview> createState() => _webviewState();
}

class _webviewState extends State<webview> {
  late InAppWebViewController _webViewController;
  double progress = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("In-App Webview"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              if (_webViewController != null) {
                _webViewController.reload();
              }
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      
      drawer: SizedBox(
          width: 125,
          child: Drawer(
            //width: 500,
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                  child: Text(' WEBSITE DRAWER'),
                ),
                ListTile(
                  title: const Text('Flutter'),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://flutter.dev/multi-platform")));
                            Navigator.pop(context);

                    // Update the state of the app.
                    // ...
                  },
                ),
                ListTile(
                  title: const Text("O'Bounce Technologies"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://obounce.net")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                 ListTile(
                  title: const Text("Affco Induction"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://affco.com.pk/Home/Induction")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                ListTile(
                  title: const Text("Stackoverflow"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://stackoverflow.com/")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                 ListTile(
                  title: const Text("Dartpad"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://dartpad.dev/")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                 ListTile(
                  title: const Text("Youtube"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://www.youtube.com/")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                 ListTile(
                  title: const Text("ChatGPT"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://openai.com/blog/chatgpt/")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                 ListTile(
                  title: const Text("Makkah Live"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://www.youtube.com/watch?v=w4Ay4lHpR4o")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                 ListTile(
                  title: const Text("Sports"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://a-sports.tv/")));
                            Navigator.pop(context);
                    // ...
                  },
                ),
                //  ListTile(
                //   title: const Text("Blomp cloud storage"),
                //   onTap: () {
                //     _webViewController.loadUrl(
                //         urlRequest:
                //             URLRequest(url: Uri.parse("https://dashboard.blomp.com/")));
                //     // ...
                //   },
                // ),
                
                 ListTile(
                  title: const Text("Daily Motion"),
                  onTap: () {
                    _webViewController.loadUrl(
                        urlRequest:
                            URLRequest(url: Uri.parse("https://www.dailymotion.com/pk")));
                    // ...
                  },
                ),
              ],
            ),
           
          ),
        ),
      body: Column(
        children: [
          progress < 1.0
              ? LinearProgressIndicator(
                  value: progress,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.green[800]!),
                )
              : const Center(), // this perform the loading on every page load
          Expanded(
            child: InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse("https://affco.com.pk/Home/Induction"),
              ),
              //initialData: 'https://obounce.net', // your website url
              //initialUrlRequest: "https://obounce.net",
              //initialFile: "https://obounce.net",
              initialOptions: InAppWebViewGroupOptions(
                crossPlatform: InAppWebViewOptions(
                  javaScriptEnabled: true,
                  javaScriptCanOpenWindowsAutomatically: true,
                ),
              ),
              onProgressChanged: (_, load) {
                setState(() {
                  progress = load / 100;
                });
              },
              onWebViewCreated: (controller) {
                _webViewController = controller;
              },
            ),
          )
        ],
      ),
    );
  }
}
