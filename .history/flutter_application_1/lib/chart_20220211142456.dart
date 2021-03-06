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
    return WebView(
      initialUrl:
          'https://kunigami-kanko.com/wp-content/themes/kunigami_by_settenlab/assets/kunigami_kanko_guide_jp.pdf',
    );
  }
}
