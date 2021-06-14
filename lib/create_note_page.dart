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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLines: null,
              decoration: InputDecoration(
                border: InputBorder.none,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Save'),
          ),
        ],
      ),
    );
  }
}
