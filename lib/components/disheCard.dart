import 'package:flutter/material.dart';

class DishCard extends StatelessWidget {
  const DishCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 20,
            ),
          ]),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 45,
              backgroundColor: Color(0xFF64bce0),
              child: CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("icons/cooscoose.jpg"),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monday",
                  style: TextStyle(fontSize: 20, letterSpacing: 1),
                ),
                SizedBox(),
                Text("Couscouse",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    Text(
                      "rating : ",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "4.5",
                      style: TextStyle(color: Colors.amber),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.dining_rounded,
                      color: Colors.amber,
                    )
                  ],
                )
              ],
            ),
          ]),
    );
  }
}
