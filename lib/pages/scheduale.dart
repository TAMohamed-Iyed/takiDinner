import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/calender.dart';

class Scheduale extends StatelessWidget {
  Scheduale({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Calender(),
        Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Selected day's dinner : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )),
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
      ],
    );
  }
}
