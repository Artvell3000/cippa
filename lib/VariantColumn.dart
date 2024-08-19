import 'package:flutter/cupertino.dart';

import 'water_assets.dart';
import 'VariantButton.dart';

class VariantColumn extends StatelessWidget {
  const VariantColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          const Expanded(
              flex:110,
              child: SizedBox()
          ),
          Expanded(
              flex:318,
              child: VariantButton(
                imgPath: Assets.potImg,
                padding: const EdgeInsets.only(top:0, bottom: 15, left: 10, right: 10),
                onPressed: (){
                  print("click1");
                },
              )
          ),
          const Expanded(
              flex:76,
              child: SizedBox()
          ),
          Expanded(
              flex:318,
              child: VariantButton(
                imgPath: Assets.potImg,
                padding: const EdgeInsets.only(top:0, bottom: 15, left: 10, right: 10),
                onPressed: (){
                  print("click2");
                },
              )),
          const Expanded(
              flex:131,
              child: SizedBox()
          ),
        ]
    );
  }
}