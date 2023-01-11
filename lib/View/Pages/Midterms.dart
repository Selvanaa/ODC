import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Components/core/mid&fin.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:flutter_app1/viewmodel/bloc/Midterms/midterms_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Midterms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => MidtermsCubit(),
  child: BlocConsumer<MidtermsCubit, MidtermsState>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
    MidtermsCubit mycubit= MidtermsCubit.get(context);
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DigitalCenter()));
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.deepOrange,
                size: 30,
              ),
            ),
            title: Text(
              'Midterms',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              ),
            ),
            actions: [
              Icon(Icons.filter_alt,
                color: Colors.deepOrange,),

            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  children: [
                   mid('Flutter'),
                    SizedBox(
                      height: 20,
                    ),
                    mid('React'),
                    SizedBox(
                      height: 20,
                    ),
                    mid('Vue'),
                    SizedBox(
                      height: 20,
                    ),
                    mid('Flutter'),
                    SizedBox(
                      height: 20,
                    ),
                    mid('React'),
                    SizedBox(
                      height: 20,
                    ),
                    mid('Vue'),

                  ]
              ),
            ),
          )
      ),
    );
  },
),
);
  }
}