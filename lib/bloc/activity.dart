part 'iterations.dart';

class Activity {
  int current = 0;
  List<Iteration> activity = [
    Iteration(newText: "Привет, ребята! А вы знали, что...."),
    Iteration(newText: "В русском языке есть много слов, которые образованы от слова 'вода'"),
    Iteration(newText: "Куда больше поместится воды, в чашку или в ложку?"),
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
    Iteration(newText: "Ребята, вы молодцы! До новых встреч!")
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


