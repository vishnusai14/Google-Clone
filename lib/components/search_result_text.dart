import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SearchResultText extends StatelessWidget {
  final String title;
  final String displayLink;
  final String snippet;
  final String image;
  final String bigTitle;
  final String link;
  // final Color color;

  const SearchResultText({
    super.key,
    required this.title,
    required this.displayLink,
    required this.snippet,
    required this.image,
    required this.bigTitle,
    required this.link,
    // required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: MediaQuery.of(context).size.width < 700
          ? const EdgeInsets.only(left: 0)
          : const EdgeInsets.only(left: 140),
      width: MediaQuery.of(context).size.width / 2,
      color: MediaQuery.of(context).size.width < 700
          ? const Color.fromARGB(255, 36, 36, 36)
          : Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            horizontalTitleGap: 5,
            contentPadding: const EdgeInsets.all(0),
            leading: Image(
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.tips_and_updates_sharp);
              },
              width: 35,
              height: 35,
              image: NetworkImage(image),
            ),
            title: Text(
              title,
              style: TextStyle(
                  color: MediaQuery.of(context).size.width > 700
                      ? const Color.fromARGB(255, 36, 36, 36)
                      : Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 14),
            ),
            subtitle: Text(
              displayLink,
              style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 9),
            ),
          ),
          GestureDetector(
            onTap: () async {
              debugPrint("Hello");

              await launchUrl(Uri.parse(link));
            },
            child: SizedBox(
              width: 450,
              child: Text(
                bigTitle,
                style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 1, 85, 153),
                    fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            width: 450,
            child: Text(
              snippet,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 12,
              ),
            ),
          )
        ],
      ),
    );
  }
}
