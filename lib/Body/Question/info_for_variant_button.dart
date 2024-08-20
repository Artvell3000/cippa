import 'package:flutter/cupertino.dart';
import 'package:water_cippa/water_assets.dart';

abstract class InfoForVariantButton{
  Widget getImageWidget();
  late void Function(BuildContext context) onPressed;

  InfoForVariantButton(this.onPressed);
}

class PotInfoForVariantButton extends InfoForVariantButton{

  @override
  Widget getImageWidget(){
    return Padding(
        padding: const EdgeInsets.only(top:0, bottom: 15, left: 10, right: 10),
        child:Image.asset(
            Assets.potImgPng,
            fit: BoxFit.scaleDown
        )
    );
  }

  PotInfoForVariantButton(super.onPressed);
}

class SpoonInfoForVariantButton extends InfoForVariantButton{

  @override
  Widget getImageWidget(){
    return Padding(
        padding: const EdgeInsets.only(top:0, bottom: 0, left: 0, right: 0),
        child:Image.asset(
            Assets.spoonImgPng,
            fit: BoxFit.scaleDown
        )
    );
  }

  SpoonInfoForVariantButton(super.onPressed);
}

class MugInfoForVariantButton extends InfoForVariantButton{

  @override
  Widget getImageWidget(){
    return Padding(
        padding: const EdgeInsets.only(top:20, bottom: 20, left: 35, right: 10),
        child:Image.asset(
            Assets.mugImgPng,
            fit: BoxFit.scaleDown
        )
    );
  }

  MugInfoForVariantButton(super.onPressed);
}

class BathInfoForVariantButton extends InfoForVariantButton{

  @override
  Widget getImageWidget(){
    return Padding(
        padding: const EdgeInsets.only(top:0, bottom: 10, left: 20, right: 5),
        child:Image.asset(
            Assets.bathImgPng,
            fit: BoxFit.scaleDown
        )
    );
  }

  BathInfoForVariantButton(super.onPressed);
}