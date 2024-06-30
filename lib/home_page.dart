import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notes = <String>['First Note'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NOTES'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < notes.length; i++)
              Card(
                child: ListTile(
                  title: Text(notes[i]),
                  onTap: () async {
                    final response = await Navigator.pushNamed(
                      context,
                      '/create-note',
                      arguments: notes[i],
                    );
                    if (response != null) {
                      var description = response as String;
                      if (response.isEmpty) {
                        notes.removeAt(i);
                      } else {
                        notes[i] = description;
                      }
                      setState(() {});
                    }
                  },
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          final description =
              await Navigator.pushNamed(context, '/create-note');
          if (description != null) {
            setState(() => notes.add(description as String));
          }
        },
      ),
    );
  }
}
