import 'package:flutter/material.dart';
import 'package:water_cippa/variants.dart';

import 'water_assets.dart';

class VariantButton extends StatelessWidget {
  final CircleBorder shape = const CircleBorder(
      side: BorderSide(
          color: Assets.shadowTextButtonColor,
          width: 5
      )
  );

  final Variant variant;
  final void Function()? onPressed;

  const VariantButton({
    super.key,
    required this.variant,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow:  [BoxShadow(
            color: Assets.shadowTextButtonColor,
            spreadRadius: 3,
            blurRadius: 10,
            offset: Offset(0, 3),
          )],
        ),
        child: TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          alignment: Alignment.center,
          backgroundColor: Assets.backColorVariantButton,
          shadowColor: Assets.shadowTextButtonColor,
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