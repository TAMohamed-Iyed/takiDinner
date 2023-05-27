import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DinnerRatingBar extends StatelessWidget {
  const DinnerRatingBar({super.key});

  void onRatingUpdate(double newRating) {}
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
        initialRating: 3,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
        itemBuilder: (context, _) => const Icon(
              Icons.dining_rounded,
              color: Colors.amber,
            ),
        onRatingUpdate: onRatingUpdate);
  }
}
