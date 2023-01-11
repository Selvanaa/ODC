import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/viewmodel/bloc/counter/c_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CCubit(),
      child: BlocConsumer<CCubit, CState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          CCubit mycubit = CCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              body: Center(
                child: Row(
                  children: [
                    OutlinedButton(
                        onPressed: () {
                          mycubit.Plus();
                        },
                        child: Icon(Icons.add)),
                    Text(mycubit.count.toString()),
                    OutlinedButton(
                        onPressed: () {
                          mycubit.minus();
                        },
                        child: Icon(Icons.remove)),
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
