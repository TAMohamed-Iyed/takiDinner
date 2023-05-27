import 'package:flutter/material.dart';

class DonationCard extends StatelessWidget {
  const DonationCard({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.wallet_giftcard,
              size: 50,
              color: Color(0xFF64bce0),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "To : ",
                      style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 1,
                          color: Colors.black26,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Mohamed Iyed Rhimi",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Points : ",
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1,
                              color: Colors.black26,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "2",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "At : ",
                          style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1,
                              color: Colors.black26,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          "2023, 10 Monday",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ]),
    );
  }
}
