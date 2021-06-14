import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOTES'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title: Text('My first note'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('My second note'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('My third note'),
            ),
          ),
          Card(
            child: ListTile(
              title: Text('My fourth note'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('CLICOU');
        },
      ),
    );
  }
}
