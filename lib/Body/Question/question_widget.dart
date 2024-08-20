import 'package:flutter/cupertino.dart';

import 'variant_column.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            flex: 661,
            child: SizedBox()
        ),
        Expanded(
            flex: 321,
            child: VariantColumn()
        ),
        Expanded(
            flex: 132,
            child: SizedBox()
        ),
      ],
    );
  }
}