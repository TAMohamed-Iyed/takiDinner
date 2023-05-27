import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/ratingBar.dart';

class RatingDinnerBottomSheet extends StatelessWidget {
  const RatingDinnerBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          child: Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.centerRight,
            child: const Icon(
              Icons.close,
              size: 30,
            ),
          ),
          onTap: () => Navigator.of(context).pop(),
        ),
        ClipOval(
          child: SizedBox.fromSize(
            size: const Size.fromRadius(100),
            child: const Image(
              image: AssetImage("icons/cooscoose.jpg"),
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          child: const Text(
            "Couscouse",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const DinnerRatingBar()
      ],
    );
  }
}
