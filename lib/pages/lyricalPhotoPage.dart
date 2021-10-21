import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class LyricalPhotoPage extends StatefulWidget {
  const LyricalPhotoPage({Key? key}) : super(key: key);

  @override
  _LyricalPhotoPageState createState() => _LyricalPhotoPageState();
}

class _LyricalPhotoPageState extends State<LyricalPhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "  🎶 \n So liz I know you love a bunch of songs, \nso I took them and put your fav lyrics on one of my fav pics of you. I hope you like it. ",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  height: 360.0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        "stickerViewPage",
                        arguments: {
                          "stickerImage": "assets/images/lyricalPhoto.jpg",
                        },
                      );
                    },
                    child: Container(
                      child: Image.asset(
                        "assets/images/lyricalPhoto.jpg",
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "I Mean All The Words In The Picture! \nHope you like it.",
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.brown[500]), //cyan[200]
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    fixedSize: MaterialStateProperty.all(Size(260.0, 50.0)),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "StickersCatalogPage");
                  },
                  child: Text(
                    "Click Here To Continue",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lime[100]), //cyan[200]
                    fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
                    elevation: MaterialStateProperty.all(0.0),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "lyricalCheatSheetPage");
                  },
                  child: Text(
                    "Song List",
                    style: TextStyle(
                      color: Colors.brown,
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
