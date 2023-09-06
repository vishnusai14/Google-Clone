import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_clone/components/header.dart';
import 'package:google_clone/components/navigation_button.dart';
import 'package:google_clone/components/search_bar_field.dart';
import 'package:google_clone/components/search_result_text.dart';
import 'package:google_clone/utils/api.dart';
import 'package:google_clone/utils/global.dart';

class SearchPageWindows extends StatefulWidget {
  final String query;

  const SearchPageWindows({super.key, required this.query});

  @override
  State<SearchPageWindows> createState() => _SearchPageWindowsState();
}

class _SearchPageWindowsState extends State<SearchPageWindows> {
  bool isLoading = true;
  List dataToDisplay = [];
  int start = 1;
  String q = "";

  void onNext() {
    setState(() {
      isLoading = true;
      start = start + 10;
    });
    getData(query: widget.query, start: start).then((value) {
      var result = jsonDecode(value.body);
      setState(() {
        isLoading = false;

        dataToDisplay = result["items"];
      });
    }).catchError((err) {
      setState(() {
        isLoading = false;

        dataToDisplay = [];
      });
    });
  }

  void onPrevious() {
    if (start == 1) {
      Navigator.of(context).pop();
    } else {
      setState(() {
        isLoading = true;
        start = start - 10;
      });
    }
    getData(query: widget.query, start: start).then((value) {
      var result = jsonDecode(value.body);
      setState(() {
        isLoading = false;

        dataToDisplay = result["items"];
      });
    }).catchError((err) {
      setState(() {
        isLoading = false;

        dataToDisplay = [];
      });
    });
  }

  @override
  void initState() {
    super.initState();
    getData(query: widget.query, start: start).then((value) {
      var result = jsonDecode(value.body);
      setState(() {
        isLoading = false;

        dataToDisplay = result["items"];
      });
    }).catchError((err) {
      setState(() {
        isLoading = false;

        dataToDisplay = [];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Image(
                      image: AssetImage("assets/images/logo.png"),
                      width: 120,
                    ),
                    SearchBarField(
                      query: widget.query,
                    ),
                  ],
                ),
                const Header(),
              ],
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width - 100,
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cards.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Chip(
                          label: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(cards[index]),
                      )),
                    );
                  }),
            ),
            Expanded(
              child: isLoading
                  ? const Center(
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : SizedBox(
                      height: 500,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: dataToDisplay.length,
                          itemBuilder: (context, index) {
                            return SearchResultText(
                              link: dataToDisplay[index]?["link"],
                              bigTitle: dataToDisplay[index]?["title"],
                              title: dataToDisplay[index]?["pagemap"]
                                      ?["metatags"]?[0]["og:title"] ??
                                  "",
                              displayLink: dataToDisplay[index]?["displayLink"],
                              snippet: dataToDisplay[index]?["snippet"],
                              image: dataToDisplay[index]?["pagemap"]
                                      ?["cse_image"]?[0]?["src"] ??
                                  "",
                            );
                          }),
                    ),
            ),
            NavigationButton(
              onPrevious: () {
                onPrevious();
              },
              onNext: () {
                onNext();
              },
            ),
          ],
        ),
      ),
    );
  }
}
