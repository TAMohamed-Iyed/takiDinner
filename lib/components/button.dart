import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

class CustomButton extends StatefulWidget {
  const CustomButton({super.key, required this.title});

  final String title;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool isPressed = false;

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    final getColor = (Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    };
    return MaterialStateProperty.resolveWith(getColor);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 40,
      margin: const EdgeInsets.only(top: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            animationDuration: const Duration(microseconds: 100),
            overlayColor:
                getColor(const Color(0xFF64bce0), const Color(0xFFb6efff)),
            backgroundColor:
                MaterialStateProperty.all(const Color(0xFF64bce0))),
        child: Text(
          widget.title,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
        ),
        onPressed: () => {},
      ),
    );
  }
}
