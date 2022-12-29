import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class DropCollectFirebaseUser {
  DropCollectFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

DropCollectFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<DropCollectFirebaseUser> dropCollectFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<DropCollectFirebaseUser>(
      (user) {
        currentUser = DropCollectFirebaseUser(user);
        return currentUser!;
      },
    );
