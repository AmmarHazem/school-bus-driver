import 'package:flutter/material.dart';

import './screens/login.dart';
import './screens/profile.dart';
import './screens/students.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School Bus Driver',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: LoginScreen(),
      initialRoute: 'login',
      routes: {
        'login': (cxt) => LoginScreen(),
        'profile': (cxt) => ProfileScreen(),
        'students': (cxt) => StudentsScreen(),
      },
    );
  }
}
