import 'package:flutter/material.dart';
import 'package:pcs_4/model/note.dart'; 

class NotePage extends StatelessWidget {
  final Note note; 

  const NotePage({super.key, required this.note}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(note.title), 
      ),
      body: SingleChildScrollView(  // Оборачиваем в SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Center(
              child: Text(
                note.title, 
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Image.asset(note.imageUrl, width: 340, height: 260),
            ),
            SizedBox(height: 16),
            Text(
              'Дата релиза: ${note.releaseDate}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Производитель: ${note.developer}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Жанр: ${note.genre}',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Цена: ${note.price}P',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Информация по игре: ${note.textMain}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            // Text(note.textNote, style: TextStyle(fontSize: 16),米可-06),
          ],
        ),
      ),
    );
  }
}