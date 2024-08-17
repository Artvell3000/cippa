import 'package:flutter/material.dart';

import 'Assets.dart';

class CippaTellWidget extends StatelessWidget {
  const CippaTellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex:111,
            child: SizedBox()
        ),
        Expanded(
            flex: 842,
            child: Stack(children: [
              Column(
                children: [
                  Expanded(
                      flex:403,
                      child: Image.asset(Assets.cippasMessage)
                  ),
                  Expanded(
                      flex:439,
                      child: SizedBox()
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                      flex:296,
                      child: SizedBox()
                  ),
                  Expanded(
                      flex:547,
                      child: Image.asset(Assets.cippaTells)
                  )
                ],
              )
            ],))
      ],
    );
  }
}