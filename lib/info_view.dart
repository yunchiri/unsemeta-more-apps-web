import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoView extends StatelessWidget {
  final String introText;
  final String imagePath;
  final String? aosPath;
  final String? iosPath;
  const InfoView(
      {Key? key,
      required this.introText,
      required this.imagePath,
      this.aosPath,
      this.iosPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagePath,
                  height: 160,
                ),
                SizedBox(height: 20),
                Text(
                  introText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    aosPath != null
                        ? GestureDetector(
                            onTap: () async {
                              await launchUrl(Uri.parse(aosPath!));
                            },
                            child: Image.asset(
                              'google-play-badge-KR.png',
                              width: 140,
                              height: 40,
                            ),
                          )
                        : Container(),
                    iosPath != null
                        ? GestureDetector(
                            onTap: () async {
                              await launchUrl(Uri.parse(iosPath!));
                            },
                            child: Image.asset(
                              'App_Store_Badge_KR.png',
                              width: 140,
                              height: 40,
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            )));
  }
}
