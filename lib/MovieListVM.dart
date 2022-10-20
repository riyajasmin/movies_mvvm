import 'package:flutter/material.dart';

import 'MoviesModel.dart';
import 'Webservice.dart';


class MovieListVM with ChangeNotifier{
  List<MovieViewModel>? movies;

  Future<void> fetchTopMovies() async{
    final movies = await Webservice().fetchMovies();
    this.movies = movies.map((movie) => MovieViewModel(movie)).toList();
    notifyListeners();
  }
}

class MovieViewModel{
  
  final Results movie;

  MovieViewModel(this.movie);
  

  String? get artistName{
    return movie.artistName;
  }
  String? get id{
    return movie.id;
  }
  String? get releaseDate{
    return movie.releaseDate;
  }
  String? get name{
    return movie.name;
  }
  String? get kind{
    return movie.kind;
  }
  String? get copyright{
    return movie.copyright;
  }
  String? get artworkUrl100{
    return movie.artworkUrl100;
  }
  String? get url{
    return movie.url;
  }
  String? get artistId{
    return movie.artistId;
  }
  String? get artistUrl{
    return movie.artistUrl;
  }


}


  




  
