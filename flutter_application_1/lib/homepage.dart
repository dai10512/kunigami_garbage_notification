import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import '/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ja_JP');
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(DateFormat.yMMMMEEEEd('ja_JP').format(now),
            style: Theme.of(context).textTheme.headline5),
        Column(
          children: [
            Text('今日のゴミ', style: Theme.of(context).textTheme.headline4),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 50, right: 50),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: Text("ゴミ種類", style: Theme.of(context).textTheme.headline4),
            ),
          ],
        ),
        Column(
          children: [
            Text('明日のゴミ', style: Theme.of(context).textTheme.headline4),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 50, right: 50),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: Text("ゴミ種類", style: Theme.of(context).textTheme.headline4),
            ),
          ],
        ),
        Container(
          height: 50,
        ),
      ],
    );
  }
}
