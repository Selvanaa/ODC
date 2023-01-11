import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:flutter_app1/View/Pages/Setting.dart';
import 'package:flutter_app1/View/Pages/newDigitalCenter.dart';
import 'package:flutter_app1/viewmodel/bloc/News/news_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class News extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: BlocConsumer<NewsCubit, NewsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          NewsCubit mycubit= NewsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
                title: Text(
                  'News',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),
                ),
              ),
              body: InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DCenter()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    color: Colors.black26,
                    width: double.infinity,
                    height: 250,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         Text(
                           'ODCs',
                           style: TextStyle(
                             color: Colors.white,
                             fontSize: 20
                           ),
                         ),
                         Row(
                           children: [
                             IconButton(
                               onPressed: () {  },
                               icon: Icon(Icons.copy,
                               color: Colors.deepOrange,),
                             ),
                             SizedBox(width: 2,),
                             IconButton(
                               onPressed: () {  },
                               icon: Icon(Icons.share,
                                 color: Colors.deepOrange,),
                             ),
                           ],
                         ),
                        ],
                        ),
                        SizedBox(
                          height: 65,
                        ),
                        Center(
                          child: Text.rich(
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
                        SizedBox(
                          height: 80,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ODC Supports All Universties ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),

                ),
              ),
              bottomNavigationBar: Card(
                color: Colors.white,
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: (
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=> DigitalCenter()));
                            },
                            child: Icon(Icons.home_outlined,
                            color: Colors.black,),
                          ),
                          OutlinedButton(
                            onPressed: () {
                            },
                            child: Row(
                              children: [
                                Icon(
                                  Icons.wysiwyg_rounded,
                                  color: Colors.deepOrange,
                                ),
                                Text('News',
                                  style: TextStyle(
                                      color: Colors.deepOrange
                                  ),)
                              ],
                            ),

                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=> Settings()));
                            },
                            child: Icon(
                              Icons.settings_outlined,
                              color: Colors.black,),
                          ),
                        ],
                      )
                  ),
                ),
              ),

            ),
          );
        },
      ),
    );
  }
}
