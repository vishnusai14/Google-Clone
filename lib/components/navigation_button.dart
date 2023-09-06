import 'package:flutter/material.dart';

class NavigationButton extends StatelessWidget {
  final Function onPrevious;
  final Function onNext;
  const NavigationButton(
      {super.key, required this.onPrevious, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            onPrevious();
          },
          child: const Text(
            "< Prev",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            onNext();
          },
          child: const Text(
            "Next >",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
