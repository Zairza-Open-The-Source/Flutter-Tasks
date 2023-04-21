import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_task/homeScreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  final auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  height: 180,
                  width: 180,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/lock.png")),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "Welcome To OUTR",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "SignIn",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 80.0, left: 20, right: 20),
                        child: TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.email_rounded),
                            hintText: "Enter email",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter your email";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding:
                            EdgeInsets.only(top: 20.0, left: 20, right: 20),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.lock),
                            hintText: "Enter password",
                          ),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "enter your password";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {});
                                auth
                                    .createUserWithEmailAndPassword(
                                        email: emailController.text.toString(),
                                        password:
                                            passwordController.text.toString())
                                    .then((value) {
                                  auth.signInWithEmailAndPassword(
                                      email: emailController.text.toString(),
                                      password:
                                          passwordController.text.toString());
                                }).then((value) {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => HomeScreen()));
                                }).onError((error, stackTrace) {
                                  print(error.toString());
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(250, 50)),
                            child: Text("SignIn")),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
