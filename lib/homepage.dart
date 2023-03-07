import 'package:flutter/material.dart';
import 'package:inappwebview1/web_view.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.all(50),
        child: MaterialButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => const webview()));
          },
          color: Colors.green,
          padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 12),
          child: const Text(
            'WebView',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
