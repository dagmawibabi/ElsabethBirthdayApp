import 'package:flutter/material.dart';

class EndPage extends StatefulWidget {
  const EndPage({Key? key}) : super(key: key);

  @override
  _EndPageState createState() => _EndPageState();
}

class _EndPageState extends State<EndPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 80.0),
              Text(
                "🥳",
                style: TextStyle(
                  fontSize: 80.0,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                "HAPPY BIRTHDAY!",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 30.0),
              Text(
                "I hope you like it all. \nMade with 💜 by Dagmawi Babi, Your personal dumb bitch lol 😂\n\n The End!",
                style: TextStyle(
                  fontSize: 20.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Text(
                "🎈🎂🍰🎁🎊🎉",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              SizedBox(height: 120.0),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.brown[500]), //cyan[200]
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  fixedSize: MaterialStateProperty.all(Size(160.0, 40.0)),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: Text(
                  "Go back home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
