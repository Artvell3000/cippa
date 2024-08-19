import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'water_event.dart';
part 'water_state.dart';

class WaterBloc extends Bloc<WaterEvent, WaterState> {
  WaterBloc() : super(WaterInitial()) {
    on<WaterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
