// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inheritedwidget/model/user_model.dart';
import 'package:inheritedwidget/splash/Pages/home.dart';
import 'package:inheritedwidget/splash/splash.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: "nome",
      imgAvatar: 'imagem',
      birthDate: 'data de nascimento',
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routes: {
          '/': (_) => SplashPage(),
          '/home': (_) => Home(),
        }),
    );
  }
}