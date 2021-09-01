import 'dart:async';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:webview_flutter/webview_flutter.dart';

class ArtigoView extends StatefulWidget {
  final String noticiaURL;
  ArtigoView({required this.noticiaURL});
  @override
  _ArtigoViewState createState() => _ArtigoViewState();
}

class _ArtigoViewState extends State<ArtigoView> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Noticias '),
            Text(
              'Pedro',
              style: TextStyle(color: Colors.green),
            )
          ],
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.noticiaURL,
          onWebViewCreated: ((WebViewController webViewController) {
            _completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
