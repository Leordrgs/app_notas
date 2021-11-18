import 'package:app_notas/Screens/Welcome_screen.dart';
import 'package:app_notas/Screens/add_notes_screen.dart';
import 'package:app_notas/Screens/eddit_notes_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'Screens/Login_screen.dart';
import 'Screens/Main_screen.dart';
import 'Screens/Register_screen.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  Future<FirebaseApp> _initializeFirebase() async {
    return await Firebase.initializeApp();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeFirebase(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text('Não foi possível inicializar o banco de dados'),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(initialRoute: WelcomeScreen.id, routes: {
            WelcomeScreen.id: (context) => const WelcomeScreen(),
            LoginScreen.id: (context) => const LoginScreen(),
            RegisterScreen.id: (context) => const RegisterScreen(),
            MainScreen.id: (context) => const MainScreen(),
            AddNotesScreen.id: (context) => const AddNotesScreen(),
            EditNotesScreen.id: (context) => const EditNotesScreen(),
          });
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
