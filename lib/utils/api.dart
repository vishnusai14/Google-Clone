import 'package:flutter/material.dart';
import 'package:google_clone/secret/secret.dart';
import 'package:http/http.dart' as http;

Future<http.Response> getNews() async {
  var response = await http.get(Uri.parse(
      'https://newsapi.org/v2/top-headlines?country=us&pageSize=20&page=1&apiKey=6e731371b6f54fd480240031907b517e'));
  return response;
}

Future<http.Response> getData(
    {required String query, required int start}) async {
  debugPrint("Coming Here");

  var response = await http.get(Uri.parse(
      'https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$cxKey&q=$query&start=$start'));

  return response;
}
