import 'package:flutter/material.dart';
import 'package:pcs_4/model/note.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  final _formKey = GlobalKey<FormState>();

  // Создаем контроллеры для каждого текстового поля
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _textNoteController = TextEditingController();
  final TextEditingController _textMainController = TextEditingController();
  final TextEditingController _imageUrlController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _genreController = TextEditingController();
  final TextEditingController _developerController = TextEditingController();
  final TextEditingController _releaseDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Новая игра'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              TextFormField(
                controller: _idController,
                decoration: InputDecoration(labelText: 'ID'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите ID';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Заголовок'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите заголовок';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _textNoteController,
                decoration: InputDecoration(labelText: 'Текст заметки'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите текст заметки';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _textMainController,
                decoration: InputDecoration(labelText: 'Основной текст'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите основной текст';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _imageUrlController,
                decoration: InputDecoration(labelText: 'URL изображения'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите URL изображения';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _priceController,
                decoration: InputDecoration(labelText: 'Цена (0000)'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите цену';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _genreController,
                decoration: InputDecoration(labelText: 'Жанр'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите жанр';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _developerController,
                decoration: InputDecoration(labelText: 'Производитель'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите производителя';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _releaseDateController,
                decoration: InputDecoration(labelText: 'Дата релиза (дд.мм.гггг)'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Пожалуйста, введите дату релиза';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Создаем новую заметку
                    final newNote = Note(
                      id: int.parse(_idController.text),
                      title: _titleController.text,
                      textNote: _textNoteController.text,
                      textMain: _textMainController.text,
                      imageUrl: _imageUrlController.text,
                      price: double.parse(_priceController.text),
                      genre: _genreController.text,
                      developer: _developerController.text,
                      releaseDate: _releaseDateController.text,
                    );

                    setState(() {
                      notes.add(newNote);
                    });

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Заметка сохранена')),
                    );

                    _idController.clear();
                    _titleController.clear();
                    _textNoteController.clear();
                    _textMainController.clear();
                    _imageUrlController.clear();
                    _priceController.clear();
                    _genreController.clear();
                    _developerController.clear();
                    _releaseDateController.clear();
                  }
                },
                child: Text('Сохранить'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // Освобождаем ресурсы контроллеров
    _idController.dispose();
    _titleController.dispose();
    _textNoteController.dispose();
    _textMainController.dispose();
    _imageUrlController.dispose();
    _priceController.dispose();
    _genreController.dispose();
    _developerController.dispose();
    _releaseDateController.dispose();
    super.dispose();
  }
}