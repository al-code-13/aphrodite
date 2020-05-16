import 'dart:ui';

import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  double _sigmaX = 0.0; // from 0-10
  double _sigmaY = 0.0; // from 0-10
  double _opacity = 0.5; // from 0-1.0
  TextStyle titleStyle = TextStyle(color: Colors.black, fontSize: 20);
  TextStyle itemsStyle = TextStyle(color: Colors.black54);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.power_input,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: size.height / 3,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i2.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-9-italentt.jpeg?fit=640%2C480&ssl=1'),
                  fit: BoxFit.cover,
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: _sigmaX, sigmaY: _sigmaY),
                child: Container(
                  color: Colors.pinkAccent.withOpacity(_opacity),
                ),
              ),
            ),
          ),
          Positioned(
            top: size.height * 0.3,
            left: -size.width * 0.03,
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                  side: BorderSide(color: Colors.pink)),
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(0),
                  height: size.height,
                  width: size.width,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 54, 16, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Profile Settings",
                          style: titleStyle,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        ListTile(
                          title: Text(
                            "Theme",
                            style: itemsStyle,
                          ),
                          trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null),
                        ),
                        ListTile(
                          title: Text(
                            "Send push notifications",
                            style: itemsStyle,
                          ),
                          trailing: IconButton(icon: Icon(Icons.check_circle), onPressed: null),
                        ),
                        Text(
                          "Account",
                          style: titleStyle,
                        ),
                        Divider(
                          thickness: 2,
                        ),
                        ListTile(
                          title: Text(
                            "Tow-factor authentication",
                            style: itemsStyle,
                          ),
                          trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null),
                        ),
                        ListTile(
                          title: Text(
                            "Mobile data use",
                            style: itemsStyle,
                          ),
                          trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null),
                        ),
                        ListTile(
                          title: Text(
                            "Language",
                            style: itemsStyle,
                          ),
                          trailing: IconButton(icon: Icon(Icons.arrow_forward_ios), onPressed: null),
                        ),
                         Text(
                          "Support",
                          style: titleStyle,
                        ),
                         Divider(
                          thickness: 2,
                        ),
                        ListTile(
                          title: Text(
                            "Call us",
                            style: itemsStyle,
                          ),
                        ),
                        ListTile(
                          title: Text(
                            "Feedback",
                            style: itemsStyle,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.22,
            left: MediaQuery.of(context).size.width * 0.08,
            child: CircleAvatar(
              maxRadius: 60,
              backgroundImage: NetworkImage(
                  "https://i0.wp.com/italentt.com/wp-content/uploads/2017/01/Modelo-Gaby-Quiroz-21.jpg?fit=300%2C300&ssl=1"),
            ),
          ),
        ],
      ),
    );
  }
}
