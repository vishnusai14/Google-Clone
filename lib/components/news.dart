import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_clone/components/new_card.dart';
import 'package:google_clone/utils/api.dart';
import 'package:http/http.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  bool isLoading = true;
  List<Map<String, String>> news = [];
  @override
  void initState() {
    debugPrint("Init State");
    super.initState();
    getNews().then((value) {
      setState(() {
        isLoading = true;
      });
      debugPrint("Result");
      List articles = jsonDecode(value.body)["articles"];

      for (int i = 0; i < articles.length; i++) {
        Map<String, dynamic> source = articles[i];
        if (source['urlToImage'] != null && source['author'] != null) {
          Map<String, String> s = {
            "title": source["title"],
            "image": source["urlToImage"]
          };
          news.add(s);
        }
        // print(news);
      }

      setState(() {
        isLoading = false;
      });

      debugPrint(value.body.toString());
    }).catchError((err) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(),
          )
        : Expanded(
            child: SizedBox(
              width: double.infinity,
              // color: Colors.red,
              child: RefreshIndicator(
                  child: ListView.builder(
                      itemCount: news.length,
                      itemBuilder: (context, index) {
                        return (NewCard(
                          title: news[index]["title"]!,
                          image: news[index]["image"]!,
                        ));
                      }),
                  onRefresh: () async {
                    try {
                      setState(() {
                        isLoading = true;
                      });
                      Response data = await getNews();
                      List articles = jsonDecode(data.body)["articles"];

                      for (int i = 0; i < articles.length; i++) {
                        Map<String, dynamic> source = articles[i];
                        if (source['urlToImage'] != null &&
                            source['author'] != null) {
                          Map<String, String> s = {
                            "title": source["title"],
                            "image": source["urlToImage"]
                          };
                          news.add(s);
                        }
                        // print(news);
                      }
                      setState(() {
                        isLoading = false;
                      });
                    } catch (err) {
                      setState(() {
                        isLoading = false;
                      });
                    }
                  }),
            ),
          );
  }
}
