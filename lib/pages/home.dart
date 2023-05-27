import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/RatingDinnerBottomSheet.dart';
import 'package:flutter_application_1/components/timer.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final Color dishIconBorderColor = const Color(0xFFb6efff);
  final bool showReserveBtn =
      DateTime.now().weekday == 5 || DateTime.now().weekday == 6;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.only(left: 10),
          child: const Text(
            "Available dishes : ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          )),
      Container(
        padding: const EdgeInsets.all(8.0),
        height: 100,
        child: ListView(
            scrollDirection: Axis.horizontal,
            physics: const AlwaysScrollableScrollPhysics(),
            children: [
              ...List.generate(
                  10,
                  (index) => Row(children: [
                        GestureDetector(
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: dishIconBorderColor,
                            child: const CircleAvatar(
                              radius: 35,
                              backgroundImage:
                                  AssetImage("icons/cooscoose.jpg"),
                            ),
                          ),
                          onTap: () => showModalBottomSheet(
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.vertical(
                                      top: Radius.circular(20))),
                              context: context,
                              builder: (context) =>
                                  const RatingDinnerBottomSheet()),
                        ),
                        const SizedBox(
                          width: 10,
                        )
                      ])),
            ]),
      ),
      const Text("Today's dinner",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      Container(
        padding: const EdgeInsets.all(8.0),
        width: double.infinity,
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Image(
                image: AssetImage("icons/cooscoose.jpg"),
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 20),
              child: const Text(
                "Couscouse",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
      const CustomButton(title: "Reserve"),
      Container(
          padding: const EdgeInsets.all(8.0),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.timelapse_outlined, color: Color(0xFF64bce0)),
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 10, top: 20),
                  child: const Text(
                    "Time left to reserve dinner : ",
                    style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                )
              ])),
      const CountDownTimer(),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}
