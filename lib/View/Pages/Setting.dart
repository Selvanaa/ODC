import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Home.dart';
import 'package:flutter_app1/View/Pages/News.dart';
import 'package:flutter_app1/View/Pages/OurPartner.dart';
import 'package:flutter_app1/View/Pages/Support.dart';
import 'package:flutter_app1/viewmodel/bloc/Settings/settings_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocConsumer<SettingsCubit, SettingsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          SettingsCubit mycubit=SettingsCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0.0,
                centerTitle: true,
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              body: Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                          'FAQ'
                      ),
                      trailing: Icon(
                          Icons.arrow_forward_ios
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(
                        color: Colors.black26,
                      ),
                    ),
                    ListTile(
                      title: Text(
                          'Terms & Conditions'
                      ),
                      trailing: Icon(
                          Icons.arrow_forward_ios
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(
                        color: Colors.black26,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> OurPartber()));
                      },
                      child: ListTile(
                        title: Text(
                            'Our Partenrs'
                        ),
                        trailing: Icon(
                            Icons.arrow_forward_ios
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(
                        color: Colors.black26,
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=> Support()));
                      },
                      child: ListTile(
                        title: Text(
                            'Support'
                        ),
                        trailing: Icon(
                            Icons.arrow_forward_ios
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Divider(
                        color: Colors.black26,
                      ),
                    ),
                    ListTile(
                      title: Text(
                          'Log out'
                      ),
                      trailing: Icon(
                          Icons.arrow_forward_ios
                      ),
                    ),
                  ],
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
                            child: Icon(
                              Icons.home_outlined,
                              color: Colors.black,),
                          ),
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> News()));
                            },
                            child: Icon(
                              Icons.wysiwyg_rounded,
                              color: Colors.black,
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {  },
                            child: Container(

                              child: Row(
                                children: [
                                  Icon(Icons.settings_outlined,
                                    color: Colors.deepOrange,),
                                  SizedBox(
                                    width: 3,
                                  ),
                                  Text('Settings',
                                    style: TextStyle(
                                        color: Colors.deepOrange
                                    ),)
                                ],
                              ),
                            ),
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
