import "package:firebase_auth/firebase_auth.dart";

class Auth {
  final userStream = FirebaseAuth.instance.authStateChanges();
  final user = FirebaseAuth.instance.currentUser;

  Future login(email, password) async {
    try {
      print(
          "Attempting to sign in with the email: $email and password: $password");
      final attempt = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return attempt;
    } on FirebaseAuthException catch (error) {
      // handle errors
    }
  }

  Future register(name, email, password) async {
    try {
      print(
          "Attempting to sign in with the email: $email and password: $password");
      final createAttempt = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      User? user = createAttempt.user;
      if (user != null) user.updateDisplayName(name);
      return null;
    } on FirebaseAuthException catch (error) {
      // handle errors
    }
  }
}
