
import 'package:flutter/material.dart';
import 'Home.dart';
import 'MovieListVM.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MaterialApp(
  home: App(),
  debugShowCheckedModeBanner: false,
));

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return ChangeNotifierProvider(
       create: (_) => MovieListVM(),
       child: Home(),);
  }
}