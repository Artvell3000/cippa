import 'package:flutter/cupertino.dart';
import 'package:water_cippa/Question/info_for_variant_button.dart';

import 'VariantButton.dart';

class VariantColumn extends StatelessWidget {
  final List<InfoForVariantButton> variants;

  const VariantColumn({
    super.key, required this.variants,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          const Expanded(
              flex:110,
              child: SizedBox()
          ),
          Expanded(
              flex:318,
              child: VariantButton(
                variant: variants.elementAt(0),
              )
          ),
          const Expanded(
              flex:76,
              child: SizedBox()
          ),
          Expanded(
              flex:318,
              child: VariantButton(
                variant: variants.elementAt(1),
              )),
          const Expanded(
              flex:131,
              child: SizedBox()
          ),
        ]
    );
  }
}