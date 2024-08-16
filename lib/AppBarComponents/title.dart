import 'package:flutter/cupertino.dart';

import '../Assets.dart';

class CippaAppBarTitle extends StatelessWidget {
  const CippaAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      Assets.waterAppBarText,
      style: TextStyle(
          fontFamily: Assets.waterAppBarFont,
          fontSize: 32,
          color: Assets.waterAppBarTextColor
      ),
    );
  }
}