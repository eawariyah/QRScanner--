import 'package:qrscannerplusplus/createform.dart';
import 'package:qrscannerplusplus/homepage.dart';
import 'package:qrscannerplusplus/scancode.dart';
import 'package:qrscannerplusplus/profilepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const LandingPage());
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Routing the pages',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/second': (context) => const CreateForm(),
        '/third': (context) => const ScanCode(),
        '/fourth': (context) => const ProfilePage(),
      },
    );
  }
}
