import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'data.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(App());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            throw "Error Occured While Firebase Init";
          }

          if (snapshot.connectionState == ConnectionState.done) {
            return AuthAnonymoslyPage();
          }

          return LoadingPage();
        },
      ),
    );
  }
}

class AuthAnonymoslyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseAuth.instance.authStateChanges().listen((User user) async {
      if (user == null) {
        await FirebaseAuth.instance.signInAnonymously();
        routeToDataPage(context);
      } else {
        routeToDataPage(context);
      }
    });

    return LoadingPage();
  }

  void routeToDataPage(BuildContext context) {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => DataPage()));
  }
}

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }
}
