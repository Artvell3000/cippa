import 'package:flutter/material.dart';
import 'package:water_cippa/Question/info_for_variant_button.dart';

import '../water_assets.dart';

class VariantButton extends StatelessWidget {
  final CircleBorder shape = const CircleBorder(
      side: BorderSide(
          color: Assets.variantButtonShadowColor,
          width: 7
      )
  );

  final InfoForVariantButton variant;

  const VariantButton({
    super.key,
    required this.variant,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow:  [BoxShadow(
            color: Assets.variantButtonShadowColor,
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          )],
        ),
        child: TextButton(
      onPressed: (){
        variant.onPressed(context);
      },
      style: TextButton.styleFrom(
          alignment: Alignment.center,
          backgroundColor: Assets.variantButtonBackColor,
          shadowColor: Assets.variantButtonShadowColor,
          shape: shape
      ),
      child:Padding(
          padding: variant.padding,
          child:Image.asset(
            variant.imgPath,
            fit: variant.fit
          )
      ),
    ));
  }
}