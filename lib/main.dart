import 'package:flutter/material.dart';
import 'package:more_app_web/info_view.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Okfastgo More Apps',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'UnseMeta More Apps'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: const [
            InfoView(
              introText:
                  "국내 최다 40개 사이트 지원\n댓글, 감정 리액션 ,썸네일 지원\n사이트별 알람지원\n좋아! 빠르게 가!",
              imagePath: 'res/okfastgo.png',
              aosPath:
                  'https://play.google.com/store/apps/details?id=com.okfastgo.best',
              iosPath:
                  'https://apps.apple.com/mn/app/%EC%A2%8B%EB%B9%A0%EA%B0%80/id1614208654',
            ),
            InfoView(
              introText:
                  "주식 코인 부동산 인간지표글만 따로 모았습니다!\n 신한은행 VIP담당자도 쓰는 재테크 인간지표",
              imagePath: 'res/indicator.png',
              aosPath:
                  'https://play.google.com/store/apps/details?id=com.okfastgo.humanindicator',
            ),
            InfoView(
              introText: "전 세계는 지금 어떤일이 일어나고 있을까요?\n뉴스보다 더 생생한 소식",
              imagePath: 'res/world.png',
              aosPath:
                  'https://play.google.com/store/apps/details?id=com.okfastgo.world',
            ),
            InfoView(
              introText: "오늘 하루의 운세를 감정과 점수로 쉽게 보여드려요",
              imagePath: 'res/family.png',
              aosPath:
                  'https://play.google.com/store/apps/details?id=com.unsemeta.family',
            )
          ],
        ));
  }
}
