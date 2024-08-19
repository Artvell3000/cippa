import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:water_cippa/Question/VariantButton.dart';
import 'package:water_cippa/Question/info_for_variant_button.dart';
import 'package:water_cippa/Theory/TheoryWidget.dart';
import 'package:water_cippa/bloc/water_bloc.dart';
import 'package:water_cippa/main.dart';

import '../Question/QuestionWidget.dart';

part 'iterations.dart';

void _nextIter(BuildContext context){
  Provider.of<WaterBloc>(context, listen: false).add(GoToNextIteration());
}

void _wrongAnswer(BuildContext context){
  Provider.of<WaterBloc>(context, listen: false).add(WrongAnswer());
}

class Activity {
  int current = 0;

  List<Iteration> activity = [
    Iteration(
        newText: "Привет, ребята! А вы знали, что....",
        newActiveZone: const SizedBox()
    ),
    Iteration(
        newText: "В русском языке есть много слов, которые образованы от слова 'вода'",
        newActiveZone: const TheoryWidget()
    ),
    Iteration(
        skipable: false,
        newText: "Куда больше поместится воды, в чашку или в ложку?",
        newActiveZone: const QuestionWidget(),
        newButton1: VariantButton(variant: SpoonInfoForVariantButton(_wrongAnswer)),
        newButton2: VariantButton(variant: MugInfoForVariantButton(_nextIter)),
    ),
    Iteration(
        newText: "Совершенно верно, в чашку!",
        newButton1: const SizedBox()
    ),
    Iteration(
        skipable: false,
        newText: "Куда больше поместится воды, в кастрюлю или в ванну?",
        newButton1: VariantButton(variant: PotInfoForVariantButton(_wrongAnswer)),
        newButton2: VariantButton(variant: BathInfoForVariantButton(_nextIter)),
    ),
    Iteration(
        newText: "Совершенно верно в кастрюлю!",
        newButton1: const SizedBox()
    ),
    Iteration(
        newText: "Куда больше поместится воды, в чашку или в ванну?",
        newButton1: VariantButton(variant: MugInfoForVariantButton(_wrongAnswer)),
        newButton2: VariantButton(variant: BathInfoForVariantButton(_nextIter)),
    ),
    Iteration(
        newText: "Правильно, в ванну!",
        newButton1: const SizedBox()
    ),
    Iteration(newText: "Где больше воды, в море или в ложке?"),
    Iteration(newText: "Верно, в море!"),
    Iteration(newText: "Где больше воды, в чашке или реке?"),
    Iteration(newText: "Правильно, в реке!"),
    Iteration(newText: "Где больше воды, в ванне или в море?"),
    Iteration(newText: "Конечно же в море!"),
    Iteration(
        newText: "Ребята, вы молодцы! До новых встреч!",
        newActiveZone: const SizedBox()
    )
  ];

  Iteration getCurrentIteration(){
    return activity[current];
  }

  Iteration toNextIteration(){
    if(current < activity.length-1){
      current++;
    }
    return activity[current];
  }
}


