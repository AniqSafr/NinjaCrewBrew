import 'package:crewbrew/models/user.dart';
import 'package:crewbrew/screens/authenticate/authenticate.dart';
import 'package:crewbrew/screens/home/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser?>(context);
    print(user);
    //return either hoem or authenticate
    if (user == null) {
      return Authnticate();
    } else {
      return Home();
    }
  }
}
