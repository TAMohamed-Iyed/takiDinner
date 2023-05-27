import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/donationCard.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text("Dinner Tickets",
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
              const Image(
                height: 220,
                image: AssetImage("icons/dinnerTicket.png"),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const Text(
                  "0",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
        const CustomButton(title: "Donate"),
        Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.only(left: 10),
            child: const Text(
              "Donation history : ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            )),
        DonationCard(),
        DonationCard(),
        DonationCard(),
        DonationCard(),
      ],
    );
  }
}
