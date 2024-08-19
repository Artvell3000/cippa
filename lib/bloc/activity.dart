import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:water_cippa/Question/VariantButton.dart';
import 'package:water_cippa/Question/info_for_variant_button.dart';
import 'package:water_cippa/Theory/TheoryWidget.dart';
import 'package:water_cippa/bloc/water_bloc.dart';
import 'package:water_cippa/main.dart';

import '../Question/QuestionWidget.dart';

part 'iterations.dart';

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
        newButton1: VariantButton(variant: PotInfoForVariantButton(
                (context){
                  Provider.of<WaterBloc>(context, listen: false).add(GoToNextIteration());
                }
          ),
        ),
        newButton2: VariantButton(variant: PotInfoForVariantButton(
                (context){

                }
          ),
        ),
    ),
    Iteration(newText: "Совершенно верно, в чашку!"),
    Iteration(newText: "Куда больше поместится воды, в кастрюлю или в ванну?"),
    Iteration(newText: "Совершенно верно в кастрюлю!"),
    Iteration(newText: "Куда больше поместится воды, в чашку или в ванну?"),
    Iteration(newText: "Правильно, в ванну!"),
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


