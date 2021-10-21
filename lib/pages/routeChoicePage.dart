import 'package:flutter/material.dart';

class RouteChoicePage extends StatefulWidget {
  const RouteChoicePage({Key? key}) : super(key: key);

  @override
  _RouteChoicePageState createState() => _RouteChoicePageState();
}

class _RouteChoicePageState extends State<RouteChoicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "beginPage");
              },
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lightGreenAccent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
              ),
              child: Text(
                "Begin",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "lyricalPhotoPage");
              },
              child: Text(
                "Lyrical Photo",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.orangeAccent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "lyricalCheatSheetPage");
              },
              child: Text(
                "Lyrical Cheat Sheet",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "StickersCatalogPage");
              },
              child: Text(
                "Sticker Catalog",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.pinkAccent),
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "lyricalCheatSheetPage");
              },
              child: Text(
                "End",
                style: TextStyle(
                  fontSize: 17.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
