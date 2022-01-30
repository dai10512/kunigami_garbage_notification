
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
  bool _isLoading = false;

  //  final controller = await _controller.future;
  //       final title = await controller.getTitle();

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl:
          'https://kunigami-kanko.com/wp-content/themes/kunigami_by_settenlab/assets/kunigami_kanko_guide_jp.pdf',
    );

    
    //     ),SingleChildScrollView(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Column(children: <Widget>[
    //     WebView(
    //       initialUrl: 'https://kunigami-kanko.com/wp-content/themes/kunigami_by_settenlab/assets/kunigami_kanko_guide_jp.pdf',
    //     ),
    //     Stack(children: <Widget>[
    //       Stack(
    //         children: <Widget>[
    //           Text('明日のゴミ', style: Theme.of(context).textTheme.headline4),
    //         ],
    //       ),
    //     ]),
    //   ]),
    // );
  }
}
