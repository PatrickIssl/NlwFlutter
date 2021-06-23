import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nlwflutter/app_widget.dart';
import 'package:nlwflutter/modules/home/home_page.dart';
import 'package:nlwflutter/modules/login/login_page.dart';
import 'package:nlwflutter/modules/splash/splash_page.dart';
import 'package:nlwflutter/shared/themes/app_colors.dart';

void main() {
  runApp(AppFireBase());
}

class AppFireBase extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _AppFireBaseState createState() => _AppFireBaseState();
}

class _AppFireBaseState extends State<AppFireBase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Material(
            child: Center(
              child: Center(
                child: Text(
                  "Não foi possível inicializar o Firebase",
                  textDirection: TextDirection.ltr,
                ),
              ),
            ),
          );
        }
        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return AppWidget();
        } else {
          return Material(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
