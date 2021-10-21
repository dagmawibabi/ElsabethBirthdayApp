import 'package:elsabeth/pages/beginPage.dart';
import 'package:elsabeth/pages/endPage.dart';
import 'package:elsabeth/pages/loadingPage.dart';
import 'package:elsabeth/pages/lyricalCheatSheetPage.dart';
import 'package:elsabeth/pages/lyricalPhotoPage.dart';
import 'package:elsabeth/pages/routeChoicePage.dart';
import 'package:elsabeth/pages/stickerViewPage.dart';
import 'package:elsabeth/pages/stickersCatalogPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.lime[100],
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.lime[100],
        appBarTheme: AppBarTheme(
          actionsIconTheme: IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.lime[100],
          elevation: 0.0,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: "Abel",
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            fontFamily: "Abel",
            fontWeight: FontWeight.bold,
          ),
          subtitle2: TextStyle(
            fontFamily: "Abel",
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            fontFamily: "Abel",
            fontWeight: FontWeight.bold,
          ),
          bodyText2: TextStyle(
            fontFamily: "Abel",
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => LoadingPage(),
        "routeChoice": (context) => RouteChoicePage(),
        "beginPage": (context) => BeginPage(),
        "lyricalPhotoPage": (context) => LyricalPhotoPage(),
        "lyricalCheatSheetPage": (context) => LyricalCheatSheetPage(),
        "StickersCatalogPage": (context) => StickersCatalogPage(),
        "stickerViewPage": (context) => StickerViewPage(),
        "endPage": (context) => EndPage(),
      },
    );
  }
}
