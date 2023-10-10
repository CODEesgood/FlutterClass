import 'package:flutter/material.dart';
import 'package:flutter_aug_5/services/auth.dart';
import 'registration.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false; // Used for showing a loading indicator

  @override
  Widget build(BuildContext context) {
    var children2 = [
      Container(
        child: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person,
            color: Colors.purpleAccent,
            size: 35.0,
          ),
          SizedBox(width: 20),
          SizedBox(
            width: 500,
            child: TextField(
                controller: _usernameController,
                decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 221, 169, 231),
                        fontSize: 15))),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.lock_person,
            color: Colors.purpleAccent,
            size: 35.0,
          ),
          SizedBox(width: 20),
          SizedBox(
            width: 500,
            child: TextField(
                obscureText: true,
                controller: _passwordController,
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 221, 169, 231),
                        fontSize: 15))),
          ),
        ],
      ),
      SizedBox(height: 20),
      GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed('/registration');
          },
          child: Text(
            'Create new account',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color.fromARGB(255, 221, 169, 231),
            ),
          )),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 300),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              // onPressed: _isLoading ? null : _handleLogin,
              onPressed: () {
                Auth()
                    .login(_usernameController.text, _passwordController.text)
                    .then((value) {
                  print("LOGIN VALUE: $value");
                  if (value != null) {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil("/", (route) => false);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Login failed. Please try again.'),
                      ),
                    );
                  }
                });
              },
              child: Padding(
                // padding: const EdgeInsets.all(8.0),
                // padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text("LOGIN"),
              )),
        ],
      ),
    ];
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 2, 16, 29),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children2,
          ),
        ),
        appBar: AppBar(title: const Text('User Registration'), actions: [
          CustomIconButton(
            icon: Icon(
              Icons.login,
              color: Colors.lightBlueAccent,
              size: 30.0,
            ),
            onPressed: () {
              // Your button's action here
              print('CustomIconButton pressed');
            },
          ),
        ]));
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const CustomIconButton({
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Colors.transparent, // Transparent background
        elevation: 0, // No shadow
        padding: EdgeInsets.zero, // No padding
        minimumSize: Size(56, 56), // Minimum size for touch target
      ),
      onPressed: () {
        Navigator.pop(context);
      },
      child: icon,
    );
  }
}
