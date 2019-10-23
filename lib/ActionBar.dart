import 'package:flutter/material.dart';

class ActionBar extends StatefulWidget {
  const ActionBar({
    Key key,
  }) : super(key: key);

  @override
  _ActionBarState createState() => _ActionBarState();
}

class _ActionBarState extends State<ActionBar> {
  bool liked = false;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      IconButton(
        icon: liked
            ? Icon(
                Icons.favorite,
                color: Colors.red,
              )
            : Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
        onPressed: () => setState(() {
          liked = !liked;
        }),
      ),
      IconButton(
        icon: Icon(Icons.chat_bubble_outline),
        color: Colors.grey,
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(Icons.share),
        color: Colors.grey,
        onPressed: () {},
      ),
    ]);
  }
}
