import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'activity.dart';

part 'water_event.dart';
part 'water_state.dart';

final Activity _activity = Activity();

class WaterBloc extends Bloc<Event, WaterState> {

  WaterBloc() : super(IterationState(_activity.getCurrentIteration())) {
    on<GoToNextIteration>((event, emit) {
      emit(IterationState(_activity.toNextIteration()));
    });
  }
}
