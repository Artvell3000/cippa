import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/activity.dart';
import '../bloc/water_bloc.dart';

class BodyBuilder extends StatelessWidget {
  const BodyBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterBloc, WaterState>(
      builder: (BuildContext context, WaterState state) {
        final Iteration iter = (state as IterationState).iter;
        return iter.newActiveZone?? const SizedBox();
      },
      buildWhen: (WaterState prev, WaterState current){
        final Iteration iter = (current as IterationState).iter;
        return iter.newActiveZone!=null;
      },
    );
  }
}