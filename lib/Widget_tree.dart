import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_auths/homepage.dart';
import 'package:google_auths/login.dart';
import 'package:provider/provider.dart';

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = Provider.of<User>(context);
    if (user == null) {
      return LoginPage();
    }
    return HomePage();
  }
}
