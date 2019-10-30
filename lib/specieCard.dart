import "package:flutter/material.dart";
import 'package:shimmer/shimmer.dart';
import 'package:transparent_image/transparent_image.dart';

class SpecieCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: ClipRRect(
        clipBehavior: Clip.antiAlias,
        borderRadius: BorderRadius.circular(8.0),
        child: Stack(
          children: <Widget>[
            Container(
              width: 340.0,
              height: 240.0,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Shimmer.fromColors(
                    baseColor: Colors.grey[200],
                    highlightColor: Colors.white,
                    child: Container(
                      width: 340.0,
                      height: 240.0,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 340.0,
                    height: 240.0,
                    child: FadeInImage.memoryNetwork(
                      fit: BoxFit.fitHeight,
                      placeholder: kTransparentImage,
                      image:
                          "https://www.aracari.com/wp-content/uploads/2019/07/growing-purple-potatoes.jpg",
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 340.0,
              height: 240.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Colors.black.withAlpha(180),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              bottom: 18.0,
              left: 18.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 4.0,
                    ),
                    child: Text(
                      "Peruvian Potatoes",
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "68 Types Of Species",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w400,
                      color: Colors.white.withAlpha(220),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
