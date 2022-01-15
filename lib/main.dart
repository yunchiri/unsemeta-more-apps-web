import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UnseMeta More Apps',
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
  List<String> get urls => const [
        'https://play.google.com/store/apps/details?id=com.unsemeta.family',
        'https://apps.apple.com/us/app/%EA%B0%80%EC%A1%B1-%EC%9A%B4%EC%84%B8/id1596208546',
      ];
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
          children: [
            Image.asset(
              'res/icon.png',
              width: MediaQuery.of(context).size.width,
            ),
            const SizedBox(
              height: 50,
            ),
            Text("우리 가족의 오늘, 내일운세를\n한눈에 쉽게 볼수 있습니다",
                textAlign: TextAlign.center,
                style: GoogleFonts.nanumMyeongjo(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.grey[800])),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () async {
                    await launch(
                        'https://play.google.com/store/apps/details?id=com.unsemeta.family');
                  },
                  child: Image.asset(
                    'google-play-badge-KR.png',
                    width: 140,
                    height: 40,
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await launch(
                        'https://apps.apple.com/kr/app/%EA%B0%80%EC%A1%B1-%EC%9A%B4%EC%84%B8/id1596208546');
                  },
                  child: Image.asset(
                    'App_Store_Badge_KR.png',
                    width: 140,
                    height: 40,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
