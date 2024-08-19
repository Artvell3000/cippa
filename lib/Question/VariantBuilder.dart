import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/water_bloc.dart';

class VariantButtonBuilder extends StatelessWidget {
  final bool first;
  const VariantButtonBuilder({
    super.key, required this.first,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WaterBloc, WaterState>(
      builder: (BuildContext context, WaterState state) {
        final iter = (state as IterationState).iter;
        if(first) return iter.newButton1??const SizedBox();
        return iter.newButton2??const SizedBox();
      },
      buildWhen: (WaterState prev, WaterState current){
        final iter = (current as IterationState).iter;
        if(first) return iter.newButton1!=null;
        return iter.newButton2!=null;
      },
    );
  }
}