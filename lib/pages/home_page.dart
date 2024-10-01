import 'package:flutter/material.dart';
import 'package:pcs_4/components/item_note.dart';
import 'package:pcs_4/model/note.dart';
import 'package:pcs_4/pages/new_page.dart'; 

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Note> _notes = List.from(notes); 

  void deleteNote(Note note) {
    setState(() {
      _notes.remove(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Видеоигры'),
      ),
      backgroundColor: const Color.fromARGB(255, 103, 190, 234),
      body: ListView.builder(
        itemCount: _notes.length, 
        itemBuilder: (BuildContext context, int index) {
          return ItemNote(note: _notes[index], onDelete: deleteNote); 
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const NewPage()), 
          );
        },
        child: Icon(Icons.add),
        backgroundColor: const Color.fromARGB(255, 44, 228, 75), 
      ),
    );
  }
}