import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:water_cippa/Body/water_body.dart';

import '../bloc/water_bloc.dart';

class WaterGestureDetector extends StatelessWidget {
  const WaterGestureDetector({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          final bloc  = Provider.of<WaterBloc>(context, listen: false);
          if((bloc.state as IterationState).iter.skipable){
            bloc.add(GoToNextIteration());
          }
        },
        child: const WaterBody()
    );
  }
}