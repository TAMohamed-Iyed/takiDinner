import 'package:curved_drawer_fork/curved_drawer_fork.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/profile.dart';
import 'package:flutter_application_1/pages/scheduale.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int index = 1;
  final double leftWidth = 75.0;
  final Color drawerColor = const Color(0xFF64bce0);

  final List<DrawerItem> _drawerItems = const <DrawerItem>[
    DrawerItem(icon: Icon(Icons.home), label: "Home"),
    DrawerItem(icon: Icon(Icons.person), label: "Profile"),
    DrawerItem(icon: Icon(Icons.calendar_month_outlined), label: "Scheduale"),
  ];

  Widget getContent() {
    switch (index) {
      case 0:
        return Home();
      case 1:
        return const Profile();
      case 2:
        return Scheduale();
      default:
        return Home();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
            elevation: 0,
            toolbarHeight: 70,
            flexibleSpace: Container(
              height: 100,
              padding: const EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  color: drawerColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 5,
                      blurRadius: 7,
                    ),
                  ]),
              child: Container(
                  padding: const EdgeInsets.only(left: 70, right: 30),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            CircleAvatar(
                              backgroundColor: Color(0xFFe5f9ff),
                              radius: 25,
                              backgroundImage: AssetImage("icons/avatar.png"),
                            ),
                            SizedBox(width: 20),
                            Text(
                              "Hamza ksair",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Container(
                            padding: const EdgeInsets.only(left: 5, right: 5),
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                            child: Row(
                              children: const [
                                Image(
                                    image: AssetImage("icons/dinnerTicket.png"),
                                    width: 40,
                                    height: 40),
                                SizedBox(width: 10),
                                Text(
                                  "0",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                      fontSize: 18),
                                )
                              ],
                            ))
                      ])),
            )),
        drawer: CurvedDrawer(
          index: index,
          width: leftWidth,
          color: drawerColor,
          buttonBackgroundColor: drawerColor,
          labelColor: Colors.white,
          items: _drawerItems,
          onTap: (newIndex) {
            setState(() {
              index = newIndex;
            });
          },
        ),
        body: SingleChildScrollView(
          child: getContent(),
        ));
  }
}
