import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_aug_5/services/auth.dart';
import 'login.dart';
import 'initialization.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();

  String? name;
  String? email;
  String? password;
  String? confirm;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create your new account!'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Your registration form fields go here
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Full Name',
                    prefixIcon: Icon(Icons.person),
                  ),
                  onChanged: (value) => setState(() {
                    name = value;
                  }),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a name.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                  ),
                  onChanged: (value) => setState(() {
                    email = value;
                  }),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter an email.";
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20.0),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(Icons.lock),
                  ),
                  onChanged: (value) => setState(() {
                    password = value;
                  }),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a password.";
                    } else if (value.length < 6) {
                      return "Password needs to be composed of at least 6 characters.";
                    }
                    return null;
                  },
                ),

                SizedBox(height: 20.0),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      prefixIcon: Icon(Icons.lock),
                    ),
                    onChanged: (value) => setState(() {
                          confirm = value;
                        }),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please confirm your password";
                      } else if (value != password) {
                        return "Passwords do not match, please re-enter";
                      }
                      return null;
                    }),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: (_formKey.currentState != null &&
                          _formKey.currentState!.validate())
                      ? () {
                          (Auth()
                              .register(name, email, password)
                              .then((result) {
                            Navigator.of(context)
                                .pushNamedAndRemoveUntil("/", (route) => false);
                          }));
                        }
                      : null,
                  child: Text('Create Account'),
                ),

                SizedBox(height: 20.0),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                  child: Text('Already have an account? Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
