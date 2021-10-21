import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class StickerViewPage extends StatefulWidget {
  const StickerViewPage({Key? key}) : super(key: key);
  @override
  _StickerViewPageState createState() => _StickerViewPageState();
}

class _StickerViewPageState extends State<StickerViewPage> {
  @override
  Widget build(BuildContext context) {
    dynamic receivedData = ModalRoute.of(context)?.settings.arguments;
    String stickerImage = receivedData["stickerImage"];
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
      body: Center(
        child: PhotoView(
          tightMode: true,
          imageProvider: AssetImage(
            stickerImage,
          ),
        ),
      ),
    );
  }
}
