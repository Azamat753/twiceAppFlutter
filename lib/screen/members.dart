import 'package:flutter/material.dart';
import 'package:twice_app/core.dart';
import 'package:twice_app/models/memberModel.dart';
import 'dart:ui' as ui;

import '../widgets/widgets.dart';

class MembersPage extends StatelessWidget {
  const MembersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Участницы',
          style: TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: membersGrid(context),
    );
  }

}
