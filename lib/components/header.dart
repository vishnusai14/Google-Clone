import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (MediaQuery.of(context).size.width > 920)
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text("Gmail"),
            ),
          if (MediaQuery.of(context).size.width > 920)
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text("Images"),
            ),
          if (MediaQuery.of(context).size.width > 700)
            Container(
                padding: const EdgeInsets.all(10),
                child: const Icon(Icons.science)),
          if (MediaQuery.of(context).size.width > 700)
            Container(
              padding: const EdgeInsets.all(10),
              child: IconButton(
                icon: const Icon(Icons.apps),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return const SimpleDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          insetPadding: EdgeInsets.only(bottom: 400, left: 0),
                          titlePadding: EdgeInsets.zero,
                          contentPadding: EdgeInsets.zero,
                          // children: [PopUp()],
                        );
                      });
                },
              ),
            ),
          Container(
            padding: const EdgeInsets.all(10),
            child: const CircleAvatar(
              child: Icon(Icons.person),
            ),
          )
        ],
      ),
    );
  }
}
