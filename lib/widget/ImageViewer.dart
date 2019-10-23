import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  final String url;

  const ImageViewer({
    @required this.url,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.black54,
              ),
            ),
            Hero(
              tag: url,
              child: Image(
                image: NetworkImage(url),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 8,
              top: 8,
              child: IconButton(
                icon: Icon(Icons.close),
                color: Colors.white,
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
