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

class SpoonInfoForVariantButton extends InfoForVariantButton{
  @override
  String imgPath = Assets.spoonImgPng;

  @override
  EdgeInsetsGeometry padding = const EdgeInsets.only(top:0, bottom: 0, left: 0, right: 0);

  @override
  BoxFit fit = BoxFit.scaleDown;

  SpoonInfoForVariantButton(super.onPressed);
}

class MugInfoForVariantButton extends InfoForVariantButton{
  @override
  String imgPath = Assets.mugImgPng;

  @override
  EdgeInsetsGeometry padding = const EdgeInsets.only(top:20, bottom: 20, left: 25, right: 10);

  @override
  BoxFit fit = BoxFit.scaleDown;

  MugInfoForVariantButton(super.onPressed);
}

class BathInfoForVariantButton extends InfoForVariantButton{
  @override
  String imgPath = Assets.bathImgPng;

  @override
  EdgeInsetsGeometry padding = const EdgeInsets.only(top:0, bottom: 10, left: 0, right: 5);

  @override
  BoxFit fit = BoxFit.scaleDown;

  BathInfoForVariantButton(super.onPressed);
}