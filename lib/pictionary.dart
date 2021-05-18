import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'entities/notes.dart';

class PictionaryState extends StatefulWidget {
  @override
  Pictionary createState() => new Pictionary();
}

class Pictionary extends State<PictionaryState> {
  List<Note> notes = [];

  Future<List<Note>> fetchNotes() async {
    var jsonText = await rootBundle.loadString("assets/pictionary.json");
    List<Note> note = [];
    var noteTxt = json.decode(jsonText);
    for (var notes in noteTxt) {
      note.add(Note.fromJson(notes));
    }
    return note;
  }
  @override
  Widget build(BuildContext context) {
    fetchNotes().then((value) {
      setState(() {
        notes.addAll(value);
      });
    });
    return Scaffold(
        appBar: AppBar(
          title: Text("Pictionary"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 32, bottom: 32, left: 16.0, right: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      notes[index].word,
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      notes[index].def,
                      style: TextStyle(color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: notes.length,
        ));
  }
}
