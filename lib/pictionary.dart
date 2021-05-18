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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child: new Image.asset(
                          //"assets/image4.png",
                          "assets/cebuano_pictures/" +
                              notes[index].img, //+ notes[index].img,
                          height: 60,
                          fit: BoxFit.cover,
                          alignment: Alignment.centerLeft,
                        )),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                          width: 10,
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notes[index].word,
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          notes[index].typ_spch,
                          style: TextStyle(
                              fontSize: 12,
                              fontStyle: FontStyle.italic,
                              color: Colors.grey.shade600),
                        ),
                        Text(
                          notes[index].def,
                          style: TextStyle(
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
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
