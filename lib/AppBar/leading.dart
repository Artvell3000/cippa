import 'package:flutter/cupertino.dart';

import '../water_assets.dart';

class CippaAppBarLeadding extends StatelessWidget {
  const CippaAppBarLeadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Image.asset(Assets.cippaLogoPng)
    );
  }
}