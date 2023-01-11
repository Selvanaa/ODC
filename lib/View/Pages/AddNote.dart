import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:flutter_app1/View/Pages/Notes.dart';
import 'package:flutter_app1/viewmodel/bloc/AddNotes/add_notes_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          AddNotesCubit mycubit= AddNotesCubit.get(context);
          return MaterialApp(
              home: Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  centerTitle: true,
                  leading: IconButton(
                    onPressed: () {
                      // Within the SecondRoute widget
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Notes()),
                        );

                    },
                    icon:
                        Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.black,)

                  ),
                  title: Text(
                    'Add Note',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black
                    ),
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                      children: [
                        TextFormField(

                          decoration: InputDecoration(
                            labelText: 'Title',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft:  Radius.circular(30),
                                topRight:  Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(30),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                  style: BorderStyle.solid
                              ),
                            ),
                          ),

                        ),



                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(

                          decoration: InputDecoration(
                            labelText: 'Date',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                topLeft:  Radius.circular(30),
                                topRight:  Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(30),
                              ),
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                  style: BorderStyle.solid
                              ),
                            ),
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(

                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(50),
                            hintText: 'Note',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.blue,
                                  width: 5,
                                  style: BorderStyle.solid
                              ),
                              borderRadius: BorderRadius.only(
                                topLeft:  Radius.circular(30),
                                topRight:  Radius.circular(0),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(30),
                              ),

                            ),
                          ),

                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 15,
                          child: Container(
                            child: OutlinedButton(onPressed: () {},

                              child: Text(
                                '+ Add',
                                style: TextStyle(
                                    color: Colors.black
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.grey,

                              ),
                            ),
                          ),
                        )
                      ] ),
                ),
              ));
        },
      ),
    );
  }
}
