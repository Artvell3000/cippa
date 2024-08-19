part of 'water_bloc.dart';

@immutable
sealed class WaterState {}

final class IterationState extends WaterState {
  final Iteration iter;
  IterationState(this.iter);
}
