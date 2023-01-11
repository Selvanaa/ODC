import 'package:flutter/material.dart';
import 'package:flutter_app1/View/Pages/Register.dart';
import 'package:flutter_app1/viewmodel/bloc/Login/login_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          LoginCubit mycubit= LoginCubit.get(context);
          return MaterialApp(
            home: Scaffold(
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.white,
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

              ),
              body: Padding(
                padding: const EdgeInsets.all(20.0),

                child: Center(
                  child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Login',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: 'E-mail',

                              border: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(
                                      10.0)),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Password',

                              suffixIcon: Icon(
                                Icons.visibility_off_rounded,
                                color: Colors.deepOrange,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(10.0)
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Forget Password?',
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.deepOrange
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
                          Container(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                mycubit.Login(context);
                              },
                              child: Text('Login',
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
                                    MaterialPageRoute(builder: (context)=> RegisterScreen()));
                              },

                              child: Text('Sign Up',
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
                        ]
                    ),
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
