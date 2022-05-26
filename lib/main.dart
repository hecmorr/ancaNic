import 'package:anca/src/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/providers/games_provider.dart';

void main() => runApp(MyApp());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => GamesProvider(),
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AncaNic',
      home: HomePage(),
    );
  }
}
