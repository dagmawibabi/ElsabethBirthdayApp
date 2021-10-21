import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime[100],
      body: Container(
        margin: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100.0),
            Text(
              "   Hey Lizzy, 👋",
              style: TextStyle(
                fontSize: 24.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20.0),
            Container(
              clipBehavior: Clip.hardEdge,
              width: 300.0,
              height: 300.0,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: BorderRadius.circular(200.0),
              ),
              child: FittedBox(
                fit: BoxFit.cover,
                child: Image.asset(
                  "assets/images/ourPhoto.jpg",
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              "I know today is your birthday so I've made you this app to walk you through my wishes and gifts.",
              style: TextStyle(
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.brown[500]), //cyan[200]
                foregroundColor: MaterialStateProperty.all(Colors.black),
                fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "beginPage");
              },
              child: Text(
                "Click Here To Begin",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 60.0),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.lime[100]), //cyan[200]
                fixedSize: MaterialStateProperty.all(Size(240.0, 50.0)),
                elevation: MaterialStateProperty.all(0.0),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "routeChoice");
              },
              child: Text(
                "Navigation",
                style: TextStyle(
                  color: Colors.brown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
