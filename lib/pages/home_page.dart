import 'package:flutter/material.dart';
import 'package:pcs_4/components/item_note.dart';
import 'package:pcs_4/model/note.dart'; 

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Видеоигры'),
      ),
      backgroundColor: const Color.fromARGB(255, 103, 190, 234),
      body: ListView.builder(
        itemCount: notes.length, 
        itemBuilder: (BuildContext context, int index) {
          return ItemNote(note: notes[index]); 
        },
      ),
    );
  }
}