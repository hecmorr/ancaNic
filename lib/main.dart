import 'package:anca/src/pages/avatar.dart';
import 'package:anca/src/pages/home.dart';
import 'package:anca/src/pages/pictograma.dart';
import 'package:anca/src/pages/profile.dart';
import 'package:anca/src/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/providers/games_provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'AncaNic',
      initialRoute: 'login',
      routes: {
        'login': (_) => const LoginPage(),
        'home': (_) => const HomePage(),
        'avatar': (_) => const AvatarPage(),
        'profile': (_) => const ProfilePage(),
        'pictograma': (_) => const Pictograma(),
      },
    );
  }
}
