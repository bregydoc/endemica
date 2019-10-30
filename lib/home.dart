import 'package:endemica/specieCard.dart';
import "package:flutter/material.dart";
import 'package:pigment/pigment.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragStart: (DragStartDetails details) {
        print(details);
      },
      onVerticalDragUpdate: (DragUpdateDetails details) {
        print(details);
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            AnimatedContainer(
              duration: Duration(milliseconds: 300),
              height: MediaQuery.of(context).size.height * 0.24,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Pigment.fromString("#6a11cb"),
                    Pigment.fromString("#2575fc"),
                  ],
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: -40,
                    top: -110,
                    child: Container(
                      width: 240.0,
                      height: 240.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withAlpha(14),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -20,
                    top: 90,
                    child: Container(
                      width: 120.0,
                      height: 120.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white.withAlpha(12),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -6,
                    bottom: -12,
                    child: Text(
                      "Home",
                      style: TextStyle(
                        color: Colors.white.withAlpha(28),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                        fontSize: 58,
                      ),
                    ),
                  ),
                  Padding(
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
                            shape: BoxShape.circle,
                            // borderRadius: BorderRadius.circular(80.0),
                            color: Colors.white,
                            image: DecorationImage(
                              fit: BoxFit.fitHeight,
                              alignment: Alignment.center,
                              image: NetworkImage(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgXTDBbb7I4IWeu5e-UxPK2RVzk4prv98-A5Kjalk-8CGLZv1W5A",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.24 - 18.0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(48.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.blueGrey.withAlpha(34),
                        blurRadius: 12.0,
                        offset: Offset(0, -2),
                      ),
                    ],
                  ),
                  height: 52.0,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 2.0,
                    ),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 16.0,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w400,
                      ),
                      cursorColor: Pigment.fromString("#2575fc"),
                      cursorWidth: 1.4,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                            style: BorderStyle.none,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                            style: BorderStyle.none,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                            style: BorderStyle.none,
                          ),
                        ),
                        alignLabelWithHint: true,
                        contentPadding: EdgeInsets.only(top: 5.2),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Pigment.fromString("#2575fc"),
                        ),
                        focusColor: Pigment.fromString("#2575fc"),
                        hintText: "Search For Species",
                        hintStyle: TextStyle(
                          color: Colors.black.withAlpha(80),
                        ),
                      ),
                      // textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.31,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 34.0,
                            vertical: 24.0,
                          ),
                          decoration: BoxDecoration(
                            color: Pigment.fromString("#5734DA"),
                            borderRadius: BorderRadius.circular(4.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color:
                                    Pigment.fromString("#5734DA").withAlpha(88),
                                blurRadius: 12.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "IDENTIFY",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 28.0,
                            vertical: 24.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.blueGrey.withAlpha(48),
                                blurRadius: 18.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.landscape,
                                color: Pigment.fromString("#5734DA"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "SPECIES",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withAlpha(180),
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12.0,
                            vertical: 24.0,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4.0),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.blueGrey.withAlpha(48),
                                blurRadius: 18.0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Icon(
                                Icons.explore,
                                color: Pigment.fromString("#5734DA"),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 8.0),
                                child: Text(
                                  "EXPERIMENTS",
                                  style: TextStyle(
                                    color: Colors.black.withAlpha(180),
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Montserrat",
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.44,
              child: Container(
                // color: Colors.redAccent,
                height: MediaQuery.of(context).size.height * 0.56,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.0, vertical: 18.0),
                  children: <Widget>[
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "New Species",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 240.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                SpecieCard(),
                                SpecieCard(),
                                SpecieCard(),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.only(top: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              "New Species",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 240.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: <Widget>[
                                SpecieCard(),
                                SpecieCard(),
                                SpecieCard(),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
