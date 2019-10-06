import 'dart:ui' as prefix0;

import "package:flutter/material.dart";
import 'package:pigment/pigment.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.22,
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
              padding: EdgeInsets.symmetric(
                horizontal: 18,
                vertical: 42,
              ),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Hello Taylor,",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 24.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 12.0),
                        child: Text(
                          "Let's Learn more about endemic species.",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                 
                ],
              ),
            ),
          ),
          Container(
            child: Text(
              "BODY",
              style: TextStyle(fontSize: 20.0),
            ),
            color: Pigment.fromString("#ffffff"),
          ),
        ],
      ),
    );
  }
}
