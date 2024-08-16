import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Assets.dart';

class VariantButton extends StatelessWidget {
  final String imgPath;
  final EdgeInsetsGeometry padding;
  final CircleBorder shape = const CircleBorder(
      side: BorderSide(
          color: Assets.shadowTextButtonColor,
          width: 10
      )
  );

  final void Function()? onPressed;

  const VariantButton({
    super.key,
    required this.imgPath,
    required this.padding,
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
          padding: padding,
          child:Image.asset(imgPath)
      ),
    ));
  }
}