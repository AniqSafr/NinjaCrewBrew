import 'package:crewbrew/screens/authenticate/register.dart';
import 'package:crewbrew/screens/authenticate/sign__in.dart';
import 'package:flutter/material.dart';

class Authnticate extends StatefulWidget {
  const Authnticate({super.key});

  @override
  State<Authnticate> createState() => _AuthnticateState();
}

class _AuthnticateState extends State<Authnticate> {
  bool showSignIn = true;
  void toggleView() {
    setState(() {
      showSignIn = !showSignIn;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showSignIn) {
      return SignIn(toggleView: toggleView);
    } else {
      return Register(toggleView: toggleView);
    }
  }
}
