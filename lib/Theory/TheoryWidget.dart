import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:water_cippa/water_assets.dart';

class TheoryWidget extends StatelessWidget {
  const TheoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(children: [
      Expanded(
        flex: 86,
          child: SizedBox()
      ),
      Expanded(
        flex: 408,
          child: TheoryColumn(textCards: [
            Assets.theoryWord1,
            Assets.theoryWord2,
            Assets.theoryWord3,
          ],)
      ),
      Expanded(
        flex: 80,
          child: SizedBox()
      ),
      Expanded(
        flex: 408,
          child: TheoryColumn(textCards: [
            Assets.theoryWord4,
            Assets.theoryWord5,
            Assets.theoryWord6,
          ],)
      ),
      Expanded(
        flex: 132,
          child: SizedBox()
      ),
    ],);
  }
}

class TheoryColumn extends StatelessWidget {
  final List<String> textCards;
  const TheoryColumn({super.key, required this.textCards});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
            flex: 110,
            child: SizedBox()
        ),
        Expanded(
            flex: 203,
            child: TheoryCard(text: textCards.elementAtOrNull(0) ?? "error")
        ),
        const Expanded(
            flex: 53,
            child: SizedBox()
        ),
        Expanded(
            flex: 203,
            child: TheoryCard(text: textCards.elementAtOrNull(1) ?? "error")
        ),
        const Expanded(
            flex: 51,
            child: SizedBox()
        ),
        Expanded(
            flex: 203,
            child: TheoryCard(text: textCards.elementAtOrNull(2) ?? "error")
        ),
        const Expanded(
            flex: 130,
            child: SizedBox()
        ),
      ],
    );
  }
}

class TheoryCard extends StatelessWidget {
  final String text;
  const TheoryCard({super.key, required this.text});

  final cardShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20))
  );

  @override
  Widget build(BuildContext context) {
    return
      Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow:  [BoxShadow(
              color: Assets.theoryCardShadowColor,
              spreadRadius: 0.1,
              blurRadius: 10,
              offset: Offset(1, 1),
            )],
          ),
          child: Card(
            shape: cardShape,
            shadowColor: Assets.theoryCardShadowColor,
            elevation: 3,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                  child:Center(
                      child: Text(
                        text,
                        style: const TextStyle(
                            fontFamily: Assets.theoryCardFont
                        ),
                )
            )
        )
      ));
  }
}


