import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Setting.dart';
import 'package:flutter_app1/viewmodel/bloc/Support/support_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Support extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SupportCubit(),
      child: BlocConsumer<SupportCubit, SupportState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SupportCubit mycubit = SupportCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                leading: IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.deepOrange,
                    size: 30,
                  ),
                ),
                title: Text(
                  'Support',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30
                  ),
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(

                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Name',
                          prefixIcon: Icon(
                              Icons.person
                          ),

                          fillColor: Colors.black45,
                          border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0),),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'E-Mail',
                        prefixIcon: Icon(
                            Icons.email
                        ),
                        fillColor: Colors.black45,
                        border: OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(

                            contentPadding: EdgeInsets.all(50),
                            labelText: 'What\'s making you unhappy?',
                            fillColor: Colors.black45,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0)
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),

                    Container(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Submit',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.deepOrange,
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
