import 'package:flutter/cupertino.dart';
import 'package:water_cippa/variants.dart';

import 'VariantColumn.dart';

class QuestionWidget extends StatelessWidget {
  final List<InfoForVariantButton> variants;
  const QuestionWidget({super.key, required this.variants});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            flex: 661,
            child: SizedBox()
        ),
        Expanded(
            flex: 321,
            child: VariantColumn(variants: variants,)
        ),
        const Expanded(
            flex: 132,
            child: SizedBox()
        ),
      ],
    );
  }
}