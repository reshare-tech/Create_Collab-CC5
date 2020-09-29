import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<BottomNavigationBarItem> navitems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/images/Path.svg"),
      title: Text("Demo"),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/images/Vector.svg"),
      title: Text("Demo"),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/images/Shape.svg"),
      title: Text(
        "Chat",
        style: TextStyle(
          fontSize: 11,
          height: 2,
        ),
      ),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(
        "assets/images/Combined Shape.svg",
        width: 18.2,
      ),
      title: Text("Demo"),
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset("assets/images/User (filled).svg"),
      title: Text("Demo"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CC5(),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Color(0xffaeaec0),
                  blurRadius: 20,
                  offset: Offset(0, -1))
            ],
          ),
          child: ClipRRect(
            child: BottomNavigationBar(
              currentIndex: 2,
              type: BottomNavigationBarType.fixed,
              showSelectedLabels: true,
              showUnselectedLabels: false,
              backgroundColor: Colors.white,
              items: navitems,
            ),
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          ),
        ),
      ),
    );
  }
}

class CC5 extends StatelessWidget {
  const CC5({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "title": "Yokesh Mithoon (You)",
        "subtitle": "Student at NIT Calicut",
        "icon": "assets/images/Vector (1).png",
        "badge": "",
      },
      {
        "title": "Wade Warren",
        "subtitle": "Student at NIT Calicut",
        "icon": "assets/images/Vector (2).png",
        "badge": "",
      },
      {
        "title": "yogeshmithoon@gmail.com",
        "subtitle": "",
        "icon": "assets/images/Vector (2).png",
        "badge": "",
      },
      {
        "title": "Cameron Williamson",
        "subtitle": "Interaction Manager",
        "icon": "assets/images/Vector (3).png",
        "badge": "Manager",
      },
      {
        "title": "Yokesh Mithoon (You)",
        "subtitle": "Student at NIT Calicut",
        "icon": "assets/images/Vector (1).png",
        "badge": "",
      },
      {
        "title": "Wade Warren",
        "subtitle": "Student at NIT Calicut",
        "icon": "assets/images/Vector (2).png",
        "badge": "",
      },
      {
        "title": "yogeshmithoon@gmail.com",
        "subtitle": "",
        "icon": "assets/images/Vector (2).png",
        "badge": "",
      },
      {
        "title": "Cameron Williamson",
        "subtitle": "Interaction Manager",
        "icon": "assets/images/Vector (3).png",
        "badge": "Manager",
      },
    ];

    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff0659ac), Color(0xff179ee6)],
                    stops: [0.26, 1])),
            padding: EdgeInsets.only(left: 20, right: 20, top: 16),
            child: ListTile(
              contentPadding:
                  EdgeInsets.only(top: 22, bottom: 0, left: 0, right: 0),
              leading: Container(
                child: IconButton(
                  onPressed: () {},
                  padding: EdgeInsets.only(right: 40),
                  icon: SvgPicture.asset(
                    "assets/images/Arrow.svg",
                  ),
                ),
              ),
              title: Transform(
                transform: Matrix4.translationValues(-50, 0, 0),
                child: Text(
                  "Create Sub-Collab",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
              subtitle: Transform(
                transform: Matrix4.translationValues(-50, 0, 0),
                child: Text(
                  'in “Face Detection Project”',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Proxima Nova",
                      color: Colors.white),
                ),
              ),
              trailing: Container(
                height: 25,
                width: 86,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(4)),
                child: RaisedButton(
                  onPressed: () {},
                  color: Color(0xff44B887),
                  child: Text(
                    "Next",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 106,
            height: size.height - kBottomNavigationBarHeight - 106,
            width: size.width,
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 16, left: 20, right: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Invite Participants to this Collab",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            ListTile(
                              contentPadding: EdgeInsets.all(0),
                              title: Text("Invite via E-mail",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400)),
                              subtitle: Text(
                                  "Invite link will be sent to the person",
                                  style: TextStyle(
                                      color: Color(0xff3E3E3E).withOpacity(0.3),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400)),
                              trailing: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    boxShadow: [
                                      BoxShadow(
                                        offset: Offset(0, 1),
                                        color: Color(0xffaeaec0),
                                      )
                                    ]),
                                width: 81,
                                height: 23.59,
                                child: RaisedButton(
                                  color: Color(0xff0F4C81),
                                  onPressed: () {},
                                  child: Text("Add",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ),
                            Transform(
                              transform: Matrix4.translationValues(0, -16, 0),
                              child: Container(
                                width: 229.74,
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText:
                                          "   Enter E-mail address and click on Add",
                                      hintStyle: TextStyle(
                                          color: Color(0xff3E3E3E)
                                              .withOpacity(0.3),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ),
                            Text(
                              "Invite Via Search",
                              style: TextStyle(
                                  color: Color(0xff3E3E3E),
                                  fontSize: 15,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 12),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIconConstraints: BoxConstraints(
                                        maxHeight: 16.78, maxWidth: 16.68),
                                    prefixIcon: SvgPicture.asset(
                                      "assets/images/search.svg",
                                    ),
                                    hintText: "    Search for a Profile Name",
                                    hintStyle: TextStyle(
                                        color:
                                            Color(0xff3E3E3E).withOpacity(0.3),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    width: size.width,
                    height: 4,
                    color: Color(0xff96a7af).withOpacity(0.3)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 16),
                        child: Text(
                          "Invited Participants (7)",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Color(0xff3e3e3e)),
                        ),
                      ),
                      Container(
                        height: 8,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "Request to join will be sent to the following people.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3e3e3e).withOpacity(0.3)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Text(
                          "Tap to Remove",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff3e3e3e).withOpacity(0.3)),
                        ),
                      ),
                      Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => Divider(
                            thickness: 1,
                          ),
                          shrinkWrap: true,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              leading: CircleAvatar(
                                  minRadius: 22.5,
                                  maxRadius: 22.5,
                                  child: Image.asset(data[index]["icon"])),
                              contentPadding:
                                  EdgeInsets.only(left: 20, right: 20),
                              title: Text(
                                data[index]["title"],
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                              subtitle: Text(
                                data[index]["subtitle"],
                                style: TextStyle(fontWeight: FontWeight.w400),
                              ),
                              trailing: data[index]["badge"] == ""
                                  ? Text("")
                                  : Container(
                                      alignment: Alignment.center,
                                      width: 70,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(
                                            color: Color(0xff44b887)),
                                      ),
                                      child: Text(
                                        data[index]["badge"],
                                        style:
                                            TextStyle(color: Color(0xff44b887)),
                                      ),
                                    ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
