// ignore_for_file: unnecessary_null_comparison, unused_import, file_names

import 'main.dart';

class MoviesModel {
 Feed? feed;

  MoviesModel({required this.feed});

  MoviesModel.fromJson(Map<String, dynamic> json) {
    feed = (json['feed'] != null ? Feed.fromJson(json['feed']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (feed != null) {
      data['feed'] = feed!.toJson();
    }
    return data;
  }
}

class Feed {
  String? title;
  String? id;
  Author? author;
 late List<Links> links;
  String? copyright;
  String? country;
  String? icon;
  String? updated;
 late List<Results> results;

  Feed(
      {required this.title,
      required this.id,
      required this.author,
      required this.links,
      required this.copyright,
      required this.country,
      required this.icon,
      required this.updated,
      required this.results});

  Feed.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    id = json['id'];
    author =
        (json['author'] != null ? Author.fromJson(json['author']) : null)!;
    if (json['links'] != null) {
      links = <Links>[];
      json['links'].forEach((v) {
        links.add(Links.fromJson(v));
      });
    }
    copyright = json['copyright'];
    country = json['country'];
    icon = json['icon'];
    updated = json['updated'];
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['id'] = id;
    if (author != null) {
      data['author'] = author!.toJson();
    }
    if (links != null) {
      data['links'] = links.map((v) => v.toJson()).toList();
    }
    data['copyright'] = copyright;
    data['country'] = country;
    data['icon'] = icon;
    data['updated'] = updated;
    if (results != null) {
      data['results'] = results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Author {
 String? name;
 String? uri;

  Author({required this.name, required this.uri});

  Author.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    uri = json['uri'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['uri'] = uri;
    return data;
  }
}

class Links {
  String? self;
  String? alternate;

  Links({required this.self, required this.alternate});

  Links.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    alternate = json['alternate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['self'] = self;
    data['alternate'] = alternate;
    return data;
  }
}

class Results {
  String? artistName;
  String ?id;
  String? releaseDate;
  String? name;
  String? kind;
  String? copyright;
  String? artworkUrl100;
 late List<Genres> genres;
  String ?url;
  String ?artistId;
  String ?artistUrl;

  Results(
      {
        required this.artistName,
     required this.id,
     required this.releaseDate,
     required this.name,
     required this.kind,
     required this.copyright,
      required this.artworkUrl100,
     required this.genres,
     required this.url,
    required  this.artistId,
     required this.artistUrl});

  Results.fromJson(Map<String, dynamic> json) {
    artistName = json['artistName'];
    id = json['id'];
    releaseDate = json['releaseDate'];
    name = json['name'];
    kind = json['kind'];
    copyright = json['copyright'];
    artworkUrl100 = json['artworkUrl100'];
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres.add(Genres.fromJson(v));
      });
    }
    url = json['url'];
    artistId = json['artistId'];
    artistUrl = json['artistUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['artistName'] = artistName;
    data['id'] = id;
    data['releaseDate'] = releaseDate;
    data['name'] = name;
    data['kind'] = kind;
    data['copyright'] = copyright;
    data['artworkUrl100'] = artworkUrl100;
    if (genres != null) {
      data['genres'] = genres.map((v) => v.toJson()).toList();
    }
    data['url'] = url;
    data['artistId'] = artistId;
    data['artistUrl'] = artistUrl;
    return data;
  }
}

class Genres {
 late String genreId;
 late String name;
 late String url;

  Genres({required this.genreId,required this.name,required this.url});

  Genres.fromJson(Map<String, dynamic> json) {
    genreId = json['genreId'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['genreId'] = genreId;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}