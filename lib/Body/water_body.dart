import 'package:flutter/cupertino.dart';

import 'CippaTells/cippa_tell_widget.dart';
import 'body_builder.dart';
import '../water_assets.dart';

class WaterBody extends StatelessWidget {
  const WaterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.waterBackgroundPng),
          fit: BoxFit.cover,
        ),
      ),
      child: const Row(
        children: [
          Expanded(
              flex: 169,
              child: SizedBox()
          ),
          Expanded(
              flex: 637,
              child: CippaTellWidget()
          ),
          Expanded(
              flex: 1114,
              child: BodyBuilder()
          ),
        ],
      ),
    );
  }
}