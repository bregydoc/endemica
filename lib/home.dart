import "package:flutter/material.dart";
import 'package:pigment/pigment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height;

  @override
  void initState() {
    super.initState();

    new Future.delayed(Duration.zero, () {
      setState(() {
        _height = MediaQuery.of(context).size.height * 0.24;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            height: _height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Pigment.fromString("#6b5eff"),
                  Pigment.fromString("#4968e4"),
                ],
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 28,
                left: 32,
                right: 32,
                bottom: 42,
              ),
              child: Row(
                // mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Hello Taylor,",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w500,
                            fontSize: 24.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Let's Learn more about endemic species.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: "Montserrat",
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    // padding: EdgeInsets.all(8.0),
                    width: 58,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.0),
                      image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        image: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgXTDBbb7I4IWeu5e-UxPK2RVzk4prv98-A5Kjalk-8CGLZv1W5A",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: <Widget>[
                Text(
                  "BODY",
                  style: TextStyle(fontSize: 20.0),
                ),
                RaisedButton(
                  onPressed: () {
                    print("CLICK");
                    setState(() {
                      _height *= 1.1;
                    });
                  },
                  child: Text("CLICK ME"),
                ),
              ],
            ),
            color: Pigment.fromString("#ffffff"),
          ),
        ],
      ),
    );
  }
}
