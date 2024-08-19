import 'package:flutter/cupertino.dart';

import '../water_assets.dart';

class CippaAppBarTitle extends StatelessWidget {
  const CippaAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      Assets.appBarText,
      style: TextStyle(
          fontFamily: Assets.appBarFont,
          fontSize: 32,
          color: Assets.appBarTextColor
      ),
    );
  }
}