import 'package:flutter/cupertino.dart';
import 'package:water_cippa/water_assets.dart';

abstract class Variant{
  abstract String imgPath;
  abstract EdgeInsetsGeometry padding;
  abstract BoxFit fit;
}

class PotVariant extends Variant{
  @override
  String imgPath = Assets.potImgPng;

  @override
  EdgeInsetsGeometry padding = const EdgeInsets.only(top:0, bottom: 15, left: 10, right: 10);

  @override
  BoxFit fit = BoxFit.scaleDown;
}