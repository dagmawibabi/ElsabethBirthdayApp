import 'package:flutter/material.dart';

class StickersCatalogPage extends StatefulWidget {
  const StickersCatalogPage({Key? key}) : super(key: key);

  @override
  _StickersCatalogPageState createState() => _StickersCatalogPageState();
}

class _StickersCatalogPageState extends State<StickersCatalogPage> {
  List stickersList = [
    "4.jpg", // You're my person
    "9.jpg", // Dark and Twisty
    "11.jpg", // Beautiful Day
    "1.jpg", // I'm the devil
    "3.png", // Overthink
    "2.png", // Ding Dong
    "8.png", // Skeleton Head
    "7.jpg", // Mi Hood
    "5.jpg", // Skeleton Nude
    "6.jpg", // We were infinite
    "10.jpg", // Always & Forever
    "12.jpg", // Mi Dumb Bitch
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          "",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text(
                "🎉",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "This one's my final gift, Just scroll down and try to guess what I got you looking at these pics...",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                height: 600.0,
                padding: EdgeInsets.all(20.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: stickersList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "stickerViewPage",
                          arguments: {
                            "stickerImage":
                                "assets/images/stickers/" + stickersList[index],
                          },
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 360.0,
                            child: Image.asset(
                              "assets/images/stickers/" + stickersList[index],
                              colorBlendMode: BlendMode.darken,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20.0),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
                child: Text(
                  "I hope you'll like them cause I got you custom made sticker. 😊",
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 60.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.brown[500]), //cyan[200]
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  fixedSize: MaterialStateProperty.all(Size(260.0, 50.0)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "endPage");
                },
                child: Text(
                  "Click Here To Continue",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ],
      ),
    );
  }
}
