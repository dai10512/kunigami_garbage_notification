import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({
    Key? key,
  }) : super(key: key);

  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return const WebView(
        initialUrl:
            'https://www.yanbaru-oki.jp/medical_welfare/list/kunigamison-gominobunbetutoshuushuubinituite/');
  }
}
