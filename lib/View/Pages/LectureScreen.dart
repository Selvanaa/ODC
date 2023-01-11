import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Components/core/lec&sec.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:flutter_app1/viewmodel/bloc/Lectures/lectures_cubit.dart';
import 'package:flutter_app1/viewmodel/bloc/Login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Lectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LecturesCubit()..getData(),
      child: BlocConsumer<LecturesCubit, LecturesState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LecturesCubit mycubit= LecturesCubit.get(context);
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
                    'Lectures',
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
                body: mycubit.modelData ==null?  CircularProgressIndicator()
                    : SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                        children: [
                          ListView.builder(
                            itemCount: mycubit.modelData!.data!.length,
                              itemBuilder:(context,index) =>
                              sec(mycubit.modelData!.data![index].lectureSubject.toString(),
                                mycubit.modelData!.data![index].lectureSubject.toString(),
                                mycubit.modelData!.data![index].lectureSubject.toString(),
                                mycubit.modelData!.data![index].lectureSubject.toString()))
                      ,   SizedBox(
                            height: 20,
                       ),

                      ListView.builder(
                            itemCount: mycubit.modelData!.data!.length,
                            itemBuilder:(context,index) =>
                                sec(mycubit.modelData!.data![index].lectureSubject.toString(),
                                    mycubit.modelData!.data![index].lectureSubject.toString(),
                                    mycubit.modelData!.data![index].lectureSubject.toString(),
                                    mycubit.modelData!.data![index].lectureSubject.toString()))

                        ,  SizedBox(
                         height: 20,
                          ),
                          ListView.builder(
                              itemCount: mycubit.modelData!.data!.length,
                              itemBuilder:(context,index) =>
                                  sec(mycubit.modelData!.data![index].lectureSubject.toString(),
                                      mycubit.modelData!.data![index].lectureSubject.toString(),
                                      mycubit.modelData!.data![index].lectureSubject.toString(),
                                      mycubit.modelData!.data![index].lectureSubject.toString()))

                        ] ),
                  )
                )
            ),
          );
        },
      ),
    );
  }
}
