import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:water_cippa/bloc/water_bloc.dart';

import '../../bloc/activity.dart';
import '../../water_assets.dart';

class MessageBlocBuilder extends StatelessWidget {
  const MessageBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterBloc, WaterState>(
      builder: (BuildContext context, WaterState state) {
        final Iteration iteration = (state as IterationState).iter;
        return Padding(padding: const EdgeInsets.only(top:5, bottom: 5, left: 5, right: 5),
        child:Text(
            iteration.newText ?? "",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: Assets.theoryCardFont,
            fontSize: 20
          ),
        ));
      },
      buildWhen: (WaterState prev, WaterState current){
          final Iteration iteration = (current as IterationState).iter;
          return iteration.newText != null;
      },
    );
  }
}