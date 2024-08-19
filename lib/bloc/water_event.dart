part of 'water_bloc.dart';

@immutable
sealed class Event {}

final class GoToNextIteration extends Event{}