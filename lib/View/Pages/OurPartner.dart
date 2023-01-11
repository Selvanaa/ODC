import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Setting.dart';

class OurPartber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
              'Our Partners',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Colors.black
              ),
            ),
          ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              elevation: 20,
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.topCenter,
                      //end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                         Colors.grey
                      ],
                    )
                ),
               //color: Colors.black26,
                height: 300,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ODC',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),

                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text.rich(
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

      ),
    );
  }
}
