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
    // return WebView(
    //   initialUrl:
    //       'http://www.vill.kunigami.okinawa.jp/kunigami-village/wp-content/uploads/2016/04/%E3%81%94%E3%81%BF%E3%81%AE%E6%AD%A3%E3%81%97%E3%81%84%E5%88%86%E3%81%91%E6%96%B9.pdf',
    // );

  }
}
