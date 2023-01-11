import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Login.dart';
import 'package:flutter_app1/viewmodel/bloc/Register/register_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class RegisterScreen extends StatelessWidget {
  var firstnameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          RegisterCubit mycubit = RegisterCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                centerTitle: true,
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
                backgroundColor: Colors.white,
              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sign Up',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                          controller: firstnameController,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            border: OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (value) {}
                      ), //first name
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'E-Mail',
                          border: OutlineInputBorder(),
                        ),
                      ), //email
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.deepOrange,
                          ),

                        ),

                      ), //password
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                        controller: passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.deepOrange,
                          ),

                        ),

                      ), //password
                      SizedBox(
                        height: 30.0,
                      ),
                      TextFormField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(),
                          ),
                          onFieldSubmitted: (value) {}
                      ), //family name
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {
                            print(firstnameController.text);
                            print(phoneController.text);
                            print(emailController.text);
                            print(passwordController.text);
                          },
                          child: Text('Sign Up',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),),
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(children: const [
                        Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Divider(thickness: 1,
                                color: Colors.black45,),
                            )),
                        Text(
                            'OR',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black)),
                        Expanded(child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Divider(thickness: 1,
                            color: Colors.black45,),
                        )),
                      ]),
                      SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context)=> LoginScreen()));
                          },

                          child: Text('Login',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.deepOrange
                            ),
                          ),
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              side: BorderSide(
                                  width: 2, color: Colors.deepOrange)
                          ),
                        ),
                      ),
                    ],
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