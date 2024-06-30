import 'package:flutter/material.dart';

class CreateNotePage extends StatefulWidget {
  const CreateNotePage({super.key});

  @override
  State<CreateNotePage> createState() => _CreateNotePageState();
}

class _CreateNotePageState extends State<CreateNotePage> {
  var description = '';
  var textController = TextEditingController();
  var isEdit = false;

  @override
  void initState() {
    WidgetsBinding.instance.addPersistentFrameCallback((_) {
      if (ModalRoute.of(context)!.settings.arguments != null) {
        description = ModalRoute.of(context)!.settings.arguments as String;
        textController.text = description;
        setState(() => isEdit = true);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit Note' : 'Create Note'),
        centerTitle: true,
        actions: [
          if (isEdit)
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                Navigator.pop(context, description);
              },
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: textController,
              maxLines: null,
              onChanged: (value) {
                description = value;
                setState(() {});
              },
              decoration: const InputDecoration(
                labelText: 'Description',
              ),
            ),
            const SizedBox(height: 32),
            if (description.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context, description);
                      },
                      child: const Text('Save'),
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
