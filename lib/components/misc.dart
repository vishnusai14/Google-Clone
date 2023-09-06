import 'package:flutter/material.dart';

OutlineInputBorder border = const OutlineInputBorder(
  borderSide: BorderSide(color: Colors.grey, width: 2),
  borderRadius: BorderRadius.all(
    Radius.circular(30),
  ),
);

InputDecoration inputDecoration(listen) {
  return InputDecoration(
    suffixIcon: GestureDetector(
      onTap: () {
        listen();
      },
      child: const Image(
        width: 40,
        height: 40,
        image: AssetImage('assets/images/Google-Mic-Icon.png'),
      ),
    ),
    prefixIcon: const Icon(
      Icons.search,
      color: Colors.grey,
    ),
    enabledBorder: border,
    focusedBorder: border,
    contentPadding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
  );
}
