import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Planter',
      theme: ThemeData(
        // 상호작용 요소에 사용되는 색상
        brightness: Brightness.light,

        // 앱의 주요부분 배경 색 (앱바, 탭바 등)
        primaryColor: Colors.greenAccent,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.redAccent),

        // 앱에 기본으로 사용될 폰트
        // fontFamily: 'IBM-Sans'
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Calendar2(key: UniqueKey()),
          // child: Text('hello 채윤!'),
        ),
      ),
    );
  }
}

class Calendar2 extends StatefulWidget {
  const Calendar2({Key? key}) : super(key: key);

  @override
  _Calendar2State createState() => _Calendar2State();
}

class _Calendar2State extends State<Calendar2> {
  @override
  Widget build(BuildContext context) {
    return TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime(2022, 1, 1),
        lastDay: DateTime(2023, 1, 31));
  }
}
