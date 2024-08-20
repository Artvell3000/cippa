import 'package:flutter/material.dart';
import 'title.dart';
import 'leading.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: Colors.white,
    centerTitle: true,
    leading: const CippaAppBarLeadding(),
    title: const CippaAppBarTitle(),
  );
}