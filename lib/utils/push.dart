import 'package:flutter/material.dart';
import 'package:google_clone/pages/search_page/search_page_mobile.dart';
import 'package:google_clone/pages/search_page/search_page_windows.dart';

void pushToSearchPage({required BuildContext context, required String query}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        debugPrint(constraints.maxWidth.toString());
        if (constraints.maxWidth > 700) {
          return SearchPageWindows(
            query: query,
          );
        } else {
          return SearchPageMobile(
            query: query,
          );
        }
      },
    );
  }));

  //Only Call the API CALL to Repopulate the result
}
