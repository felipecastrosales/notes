import 'package:flutter/material.dart';

class CreateNotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Note'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
        ],
      ),
      body: TextField(
        maxLines: 10,
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
