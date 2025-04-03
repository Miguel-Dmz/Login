import 'package:flutter/material.dart';
import 'package:Dominguez1173/login.dart';

void main() => runApp(MiLogin());

class MiLogin extends StatelessWidget {
  const MiLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "mi Login",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Login(),
    );
  }
}
