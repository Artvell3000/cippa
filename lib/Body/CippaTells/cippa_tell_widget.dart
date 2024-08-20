import 'package:flutter/material.dart';

import '../../water_assets.dart';
import 'message_builder.dart';

class CippaTellWidget extends StatelessWidget {
  const CippaTellWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          flex:111,
            child: SizedBox()
        ),
        Expanded(
            flex: 842,
            child: Stack(
              children: [
              Column(
                children: [
                  Expanded(
                      flex:403,
                      child:Stack(
                        fit: StackFit.loose,
                          children: [
                            Image.asset(Assets.cippasMessagePng),
                            const Column(
                              children: [
                                Expanded(
                                    flex:231,
                                    child: Padding(padding: EdgeInsets.only(left: 10, top: 5),
                                    child: SizedBox(
                                      width: 380,
                                      height: 60,
                                      child: Center(
                                        child: MessageBlocBuilder(),
                                      ))
                                    )
                                    )
                                ,
                                Expanded(
                                    flex: 172,
                                    child: SizedBox()
                                )
                              ],
                            )
                          ]
                      )
                  ),
                  const Expanded(
                      flex:439,
                      child: SizedBox()
                  ),
                ],
              ),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Expanded(
                      flex:296,
                      child: SizedBox()
                  ),
                  Expanded(
                      flex:547,
                      child: Image.asset(Assets.cippaTellsPng)
                  )
                ],
              )
            ],))
      ],
    );
  }
}