import 'package:elsabeth/pages/songsLyrics.dart';
import 'package:flutter/material.dart';

class LyricalCheatSheetPage extends StatefulWidget {
  const LyricalCheatSheetPage({Key? key}) : super(key: key);

  @override
  _LyricalCheatSheetPageState createState() => _LyricalCheatSheetPageState();
}

class _LyricalCheatSheetPageState extends State<LyricalCheatSheetPage> {
  List songs = [];
  List lyrics = [];
  void getSongsAndLyrics() {
    songs = [];
    lyrics = [];
    SongLyrics songLyrics = SongLyrics();
    for (int i = 0; i < songLyrics.songs.length; i++) {
      songs.add(songLyrics.songs[i]);
    }
    for (int i = 0; i < songLyrics.songs.length; i++) {
      lyrics.add(songLyrics.lyrics[i]);
    }
  }

  @override
  void initState() {
    getSongsAndLyrics();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lyrical Cheat Sheet",
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
      body: Container(
        child: ListView.builder(
          itemCount: songs.length,
          itemBuilder: (context, index) {
            return ExpansionTile(
              tilePadding:
                  EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
              leading: Icon(
                Icons.music_note_outlined,
              ),
              title: Text(
                songs[index],
              ),
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: EdgeInsets.all(16.0),
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    lyrics[index],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
