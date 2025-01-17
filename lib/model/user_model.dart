// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, use_super_parameters

import 'package:flutter/material.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String birthDate;

  UserModel({required this.name, required this.imgAvatar, required this.birthDate, required Widget child})
  :super(child: child);
  
  @override 
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name || imgAvatar!= oldWidget.imgAvatar || birthDate!= oldWidget.birthDate;
    
  }

  static of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'User model nao existe no build context');
    return userModel;
  }

  
}