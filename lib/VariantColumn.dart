import 'package:flutter/cupertino.dart';
import 'package:water_cippa/variants.dart';

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
                variant: PotVariant(),
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
                variant: PotVariant(),
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