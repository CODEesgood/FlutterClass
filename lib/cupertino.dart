import 'package:flutter/cupertino.dart';

class Cupertino extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Cupertino> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    // You can implement your login logic here
    if (username == "user" && password == "password") {
      // Successful login, navigate to the home page
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Show an error dialog for failed login
      showCupertinoDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Login Failed"),
            content: Text("Invalid username or password."),
            actions: <Widget>[
              CupertinoDialogAction(
                child: Text("OK"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Login Page'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CupertinoTextField(
              controller: _usernameController,
              placeholder: 'Username',
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            ),
            CupertinoTextField(
              controller: _passwordController,
              placeholder: 'Password',
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              obscureText: true,
            ),
            CupertinoButton.filled(
              onPressed: _handleLogin,
              child: Text('Login'),
            ),
            CupertinoButton(
              onPressed: () {
                // Navigate to the registration page
                Navigator.pushNamed(context, '/registration');
              },
              child: Text('Create New Account'),
            ),
          ],
        ),
      ),
    );
  }
}
