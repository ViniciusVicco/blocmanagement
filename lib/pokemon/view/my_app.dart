import 'package:blocmanagement/pokemon/view/pages/pokemon_name.dart';
import 'package:flutter/material.dart';

import 'pages/my_home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      routes: {
        "": (context) => const MyHomePage(
              title: "Teste",
            ),
        "/PokemonNamePage": (context) => const PokemonNamePage(),
      },
    );
  }
}
