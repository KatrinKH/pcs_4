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
        title: const Center(child: Text('Видеоигры')),
      ),
      backgroundColor: const Color(0xFF67BEEA), 
      body: ListView.builder(
        itemCount: _notes.length, 
        itemBuilder: (BuildContext context, int index) {
          return ItemNote(note: _notes[index], onDelete: deleteNote); 
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NewPage()), 
        ),
        child: const Icon(Icons.add),
        backgroundColor: const Color(0xFF2CE44B), 
      ),
    );
  }
}
