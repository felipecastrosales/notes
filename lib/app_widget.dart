import 'package:flutter/material.dart';

import 'create_note_page.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/create-note': (context) => CreateNotePage(),
      }
    );
  }
}
