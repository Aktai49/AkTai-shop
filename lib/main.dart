import 'package:flutter/material.dart';
import 'package:login/login.dart';

void main() {
  runApp(const Tirkeme());
}
class Tirkeme extends StatelessWidget {
   const Tirkeme({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoggIn',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 76, 180, 188),
        ),
        home:IamRich() ,
    );
  }
}
