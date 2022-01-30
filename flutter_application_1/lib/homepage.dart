import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

DateTime now = DateTime.now();
DateTime tommorowNow = now.add(Duration(days: 1)); // print(now.weekday);
List firstWeekday = [1, 2, 3, 4, 5, 6, 7];
List secondWeekday = [8, 9, 10, 11, 12, 13, 14];

List thirdWeekday = [15, 16, 17, 18, 19, 20, 21];

List fourthWeekday = [22, 23, 24, 25, 26, 27, 28];

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
              margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: (() {
                if (now.weekday == 1 || now.weekday == 4) {
                  return Text(
                    "燃やせるゴミ",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (now.weekday == 6) {
                  return Text(
                    "燃やせないゴミ等",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (now.weekday == 3 &&
                    (secondWeekday.contains(8) ||
                        fourthWeekday.contains(now.day))) {
                  return Text(
                    "ペットボトル",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (now.weekday == 3 &&
                    (firstWeekday.contains(now.day) ||
                        thirdWeekday.contains(now.day))) {
                  return Text(
                    "かん",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else {
                  return Text(
                    "収集はありません",
                    style: Theme.of(context).textTheme.headline4,
                  );
                }
              })(),
            ),
          ],
        ),
        Column(
          children: [
            Text('明日のゴミ', style: Theme.of(context).textTheme.headline4),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 40, right: 40),
              padding: const EdgeInsets.all(10),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
              ),
              child: (() {
                if (tommorowNow.weekday == 1 || tommorowNow.weekday == 4) {
                  return Text(
                    "燃やせるゴミ",
                    style: Theme.of(context).textTheme.headline4,
                  );
                } else if (tommorowNow.weekday == 6) {
                  return Text(
                    "燃やせないゴミ等",
                    style: Theme.of(context).textTheme.headline5,
                  );
                } else if (tommorowNow.weekday == 3) {
                  return Text(
                    "ゴミ種類",
                    style: Theme.of(context).textTheme.headline5,
                  );
                } else {
                  return Text(
                    "収集はありません",
                    style: Theme.of(context).textTheme.headline5,
                  );
                }
              })(),
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
