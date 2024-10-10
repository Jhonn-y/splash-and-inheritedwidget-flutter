// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:inheritedwidget/model/user_model.dart';

class Drawerpage extends StatelessWidget {
  const Drawerpage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = UserModel.of(context);

    return Drawer(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(user.imgAvatar),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(user.name),
                SizedBox(width: 8),
                Text(user.birthDate),
              ],
            )
          ],
        ),
      ),
    );
  }
}