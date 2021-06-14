import 'package:flutter/material.dart';

import 'create_note_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notes',
      debugShowCheckedModeBanner: false,
      home: CreateNotePage(),
    );
  }
}
