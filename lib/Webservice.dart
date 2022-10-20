// ignore_for_file: file_names

import 'dart:developer';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'MoviesModel.dart';


class Webservice{

  Future<List<Results>> fetchMovies() async{

      String url = "https://rss.itunes.apple.com/api/v1/au/movies/top-movies/all/50/explicit.json";

      final response = await http.get(Uri.parse(url));

      if(response.statusCode == 200){


        log("response=="+response.body);
        final json = jsonDecode(response.body);
        final movieModel = MoviesModel.fromJson(json);
        return movieModel.feed!.results;
      }
      else{
        throw Exception("Error fetching movies...");
      }

  }
}