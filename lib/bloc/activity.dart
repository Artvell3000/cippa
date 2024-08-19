import 'package:flutter/cupertino.dart';
import 'package:water_cippa/bloc/IterationsBuilder.dart';
part 'iterations.dart';

class Activity {
  int current = 0;

  late List<Iteration> iterations;

  Activity(){
    iterations = IterationsBuilder().iterations;
  }

  Iteration getCurrentIteration(){
    return iterations[current];
  }

  Iteration toNextIteration(){
    if(current < iterations.length-1){
      current++;
    }
    return iterations[current];
  }
}


