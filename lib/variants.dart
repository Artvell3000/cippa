import 'package:flutter/cupertino.dart';
import 'package:water_cippa/water_assets.dart';

abstract class InfoForVariantButton{
  abstract String imgPath;
  abstract EdgeInsetsGeometry padding;
  abstract BoxFit fit;
  late void Function(BuildContext context) onPressed;

  InfoForVariantButton(this.onPressed);
}

class PotInfoForVariantButton extends InfoForVariantButton{
  @override
  String imgPath = Assets.potImgPng;

  @override
  EdgeInsetsGeometry padding = const EdgeInsets.only(top:0, bottom: 15, left: 10, right: 10);

  @override
  BoxFit fit = BoxFit.scaleDown;

  PotInfoForVariantButton(super.onPressed);
}