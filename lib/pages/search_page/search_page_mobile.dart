import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_clone/components/header.dart';
import 'package:google_clone/components/navigation_button.dart';
import 'package:google_clone/components/search_bar_field.dart';
import 'package:google_clone/components/search_result_text.dart';
import 'package:google_clone/utils/api.dart';
import 'package:google_clone/utils/global.dart';

class SearchPageMobile extends StatefulWidget {
  final String query;
  const SearchPageMobile({super.key, required this.query});

  @override
  State<SearchPageMobile> createState() => _SearchPageMobileState();
}

class _SearchPageMobileState extends State<SearchPageMobile> {
  bool isLoading = true;
  int start = 1;
  List dataToDisplay = [];

  void onNext() {
    if (mounted) {
      setState(() {
        isLoading = true;
        start = start + 10;
      });
    }

    getData(query: widget.query, start: start).then((value) {
      var result = jsonDecode(value.body);
      if (mounted) {
        setState(() {
          isLoading = false;

          dataToDisplay = result["items"];
        });
      }
    }).catchError((err) {
      if (mounted) {
        setState(() {
          isLoading = false;

          dataToDisplay = [];
        });
      }
    });
  }

  void onPrevious() {
    if (start == 1) {
      Navigator.of(context).pop();
    } else {
      if (mounted) {
        setState(() {
          isLoading = true;
          start = start - 10;
        });
      }
    }
    getData(query: widget.query, start: start).then((value) {
      var result = jsonDecode(value.body);
      if (mounted) {
        setState(() {
          isLoading = false;

          dataToDisplay = result["items"];
        });
      }
    }).catchError((err) {
      if (mounted) {
        setState(() {
          isLoading = false;

          dataToDisplay = [];
        });
      }
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
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SearchBarField(query: widget.query),
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
                          backgroundColor: Colors.white,
                          label: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              cards[index],
                              style: const TextStyle(color: Colors.black),
                            ),
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
                  : ListView.builder(
                      itemCount: dataToDisplay.length,
                      itemBuilder: (context, index) {
                        return SearchResultText(
                          link: dataToDisplay[index]?["link"],
                          bigTitle: dataToDisplay[index]?["title"],
                          title: dataToDisplay[index]?["pagemap"]?["metatags"]
                                  ?[0]["og:title"] ??
                              "",
                          displayLink: dataToDisplay[index]?["displayLink"],
                          snippet: dataToDisplay[index]?["snippet"],
                          image: dataToDisplay[index]?["pagemap"]?["cse_image"]
                                  ?[0]?["src"] ??
                              "",
                        );
                      }),
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
