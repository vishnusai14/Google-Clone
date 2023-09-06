import 'package:flutter/material.dart';
import 'package:google_clone/components/drawer_comp.dart';
import 'package:google_clone/components/news.dart';
import 'package:google_clone/components/search_bar_field.dart';

import 'package:google_clone/utils/global.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({super.key});

  @override
  State<HomePageMobile> createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = 0;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: selectedTab == 0 ? 2 : 0,
                        color: selectedTab == 0 ? Colors.blue : Colors.black),
                  ),
                ),
                child: Text(
                  "All",
                  style:
                      Theme.of(context).textTheme.titleMedium?.merge(TextStyle(
                            color: selectedTab == 0 ? Colors.blue : Colors.grey,
                          )),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTab = 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                        width: selectedTab == 1 ? 2 : 0,
                        color: selectedTab == 1 ? Colors.blue : Colors.black),
                  ),
                ),
                child: Text(
                  "Image",
                  style: Theme.of(context).textTheme.titleMedium?.merge(
                        TextStyle(
                          color: selectedTab == 1 ? Colors.blue : Colors.grey,
                        ),
                      ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8),
            child: const Row(
              children: [
                Icon(Icons.apps),
                SizedBox(width: 16),
                CircleAvatar(
                  radius: 15,
                  child: Icon(
                    Icons.person,
                    size: 20,
                  ),
                )
              ],
            ),
          )
        ],
      ),
      drawer: const Drawer(
        child: DrawerComp(),
      ),
      body: Container(
        color: Colors.black,
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Text(
              "Google",
              style: Theme.of(context).textTheme.bodyMedium?.merge(
                    const TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
                padding: EdgeInsets.all(10.0),
                child: SearchBarField(query: "")),
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Google Offered in:",
                style: Theme.of(context).textTheme.titleMedium?.merge(
                      const TextStyle(fontSize: 15),
                    ),
              ),
            ),
            SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 6; i++) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          lang[i],
                          style: const TextStyle(color: Colors.blue),
                        ),
                      )
                    ]
                  ],
                )),
            SizedBox(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 6; i < 8; i++) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        lang[i],
                        style: const TextStyle(color: Colors.blue),
                      ),
                    )
                  ]
                ],
              ),
            ),
            const News(),
          ],
        ),
      ),
    );
  }
}
