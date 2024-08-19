import 'package:flutter/cupertino.dart';
import 'VariantBuilder.dart';

class VariantColumn extends StatelessWidget {

  const VariantColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
        children:[
          Expanded(
              flex:110,
              child: SizedBox()
          ),
          Expanded(
              flex:318,
              child: VariantButtonBuilder(first: true,)
          ),
          Expanded(
              flex:76,
              child: SizedBox()
          ),
          Expanded(
              flex:318,
              child: VariantButtonBuilder(first: false,)
          ),
          Expanded(
              flex:131,
              child: SizedBox()
          ),
        ]
    );
  }
}