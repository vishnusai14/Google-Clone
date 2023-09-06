import 'package:flutter/material.dart';

class FooterText extends StatelessWidget {
  final String text;
  const FooterText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17.0),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium?.merge(
              const TextStyle(color: Colors.black, fontSize: 14),
            ),
      ),
    );
  }
}
