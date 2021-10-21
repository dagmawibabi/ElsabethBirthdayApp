import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

class BeginPage extends StatefulWidget {
  const BeginPage({Key? key}) : super(key: key);

  @override
  _BeginPageState createState() => _BeginPageState();
}

class _BeginPageState extends State<BeginPage> {
  dynamic player;
  void musicPlayer() async {
    player = AudioPlayer();
    var duration = await player.setAsset("assets/music/LIZZY.mp3");
    player.play();
  }

  @override
  void initState() {
    musicPlayer();
    super.initState();
  }

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
        centerTitle: true,
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
          Column(
            children: [
              SizedBox(height: 40.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.0),
                    Image.asset(
                      "assets/images/colorBG6.png",
                      height: 360.0,
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "HAPPY BIRTHDAY LIZZY!",
                      style: TextStyle(
                        fontSize: 26.0,
                      ),
                    ),
                    Text(
                      "😊😋😎😍😘🥰😚☺🤗",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                    Text(
                      "🙌🎉🥂🎀🎁🎈🎊 🍰 \n",
                      style: TextStyle(
                        fontSize: 18.0,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100.0),
              Container(
                margin: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        player.pause();
                      },
                      icon: Icon(
                        Icons.pause,
                      ),
                    ),
                    Text(
                      "Lizzy... 📝",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    SizedBox(height: 40.0),
                    Text(
                      "I know I've said it a million times but you make life in AASTU worth the while. You make all those long, cold and empty nights worth having when you're around. 😊 \n\nYou're one of the most caring and loving person I know. I would sacrifice so much to keep you around, cause you're that type of person and you deserve this and more. 😍 \n\nI wish you the best 20th birthday. I just wanna see you smile everyday and night before all that beautiful teeth falls off. 😅\n\nI hope this year all your scars heal, all your failures overturn and all the void is filled with love. ⏳ \n\n I love today cause today gave me you. \nAnd as you would say, \nLive Forever Mi Dumb Bitch 😘 \n\n\n❤ I love you! ❤",
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              Container(
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Colors.brown[500]), //cyan[200]
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
                  ),
                  child: Text(
                    "Click to see gifts 🎁",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "lyricalPhotoPage");
                  },
                ),
              ),
              SizedBox(height: 160.0),
            ],
          ),
        ],
      ),
    );
  }
}
