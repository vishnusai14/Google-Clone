import 'package:flutter/material.dart';
import 'package:google_clone/components/footer_text.dart';
import 'package:google_clone/components/header.dart';
import 'package:google_clone/components/search_bar_field.dart';
import 'package:google_clone/utils/global.dart';

class HomePageWindows extends StatelessWidget {
  const HomePageWindows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Header(),
          const Image(
            image: AssetImage('assets/images/logo.png'),
          ),
          const SearchBarField(
            query: "",
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 209, 206, 206),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Google Search",
                    style: Theme.of(context).textTheme.titleMedium?.merge(
                          const TextStyle(color: Colors.black, fontSize: 14),
                        ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 209, 206, 206),
                  ),
                  onPressed: () {},
                  child: Text(
                    "I'm Feeling lucky",
                    style: Theme.of(context).textTheme.titleMedium?.merge(
                          const TextStyle(color: Colors.black, fontSize: 14),
                        ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Google Offered in : ",
                style: Theme.of(context).textTheme.titleMedium?.merge(
                      const TextStyle(fontSize: 15),
                    ),
              ),
              SizedBox(
                height: 40,
                width: 500,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: lang.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        lang[index],
                        style: const TextStyle(color: Colors.blue),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          const Spacer(),
          Container(
              color: const Color.fromRGBO(242, 242, 242, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const FooterText(text: "India"),
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: Colors.grey,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          FooterText(text: "About"),
                          FooterText(text: "Advertising"),
                          FooterText(text: "Business"),
                          FooterText(text: "How seach Works"),
                        ],
                      ),
                      Row(
                        children: [
                          FooterText(text: "Provacy"),
                          FooterText(text: "Terms"),
                          FooterText(text: "Settings"),
                        ],
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
