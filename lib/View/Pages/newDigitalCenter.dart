import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/News.dart';
import 'package:flutter_app1/viewmodel/bloc/DigitalCenter/digital_center_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DigitalCenterCubit(),
      child: BlocConsumer<DigitalCenterCubit, DigitalCenterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          DigitalCenterCubit mycubit=DigitalCenterCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                toolbarHeight: 200,
                backgroundColor: Colors.white,
                centerTitle: true,
                leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => News()));
                  },
                  icon:  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
                title: Text.rich(
                  TextSpan(style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30
                  ),
                    children: [
                      TextSpan(text: 'Orange ', style: TextStyle(
                          color: Colors.deepOrange
                      )),
                      TextSpan(text: 'Digital Center',
                          style: TextStyle(
                              color: Colors.black
                          )),

                    ],
                  ),

                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ODCs',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '2022-07-06',
                      style: TextStyle(
                        color: Colors.deepOrange,

                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'ODC Support All Universties',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
