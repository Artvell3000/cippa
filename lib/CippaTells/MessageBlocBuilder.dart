import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_cippa/bloc/water_bloc.dart';

import '../bloc/activity.dart';

class MessageBlocBuilder extends StatelessWidget {
  const MessageBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterBloc, WaterState>(
      builder: (BuildContext context, WaterState state) {
        final Iteration iteration = (state as IterationState).iter;
        return Text(iteration.newText ?? "");
      },
      buildWhen: (WaterState prev, WaterState current){
          final Iteration iteration = (current as IterationState).iter;
          return iteration.newText != null;
      },
    );
  }
}