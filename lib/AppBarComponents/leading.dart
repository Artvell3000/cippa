import 'package:flutter/cupertino.dart';

import '../Assets.dart';

class CippaLeadding extends StatelessWidget {
  const CippaLeadding({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
        child: Image.asset(Assets.cippaLogo)
    );
  }
}