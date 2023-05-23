import 'package:crewbrew/models/user.dart';
import 'package:crewbrew/screens/wrapper.dart';
import 'package:crewbrew/services/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamProvider<MyUser?>.value(
          catchError: (_, __) => null,
          value: AuthService().user,
          initialData: null,
          child: MaterialApp(
            home: Wrapper(),
          )),
    );
  }
}
