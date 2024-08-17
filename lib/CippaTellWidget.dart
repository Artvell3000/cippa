import 'package:flutter/material.dart';

import 'Assets.dart';

class CippaTellWidget extends StatelessWidget {
  const CippaTellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Text("1"),
          ),
        ),
        Image.asset(Assets.cippaTells)
      ],
    );
  }
}