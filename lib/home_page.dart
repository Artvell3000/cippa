import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'AppBar/build_app_bar.dart';
import 'Body/water_gesture_detector.dart';
import 'bloc/water_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: BlocProvider(
          create: (BuildContext context) => WaterBloc(),
          child: const WaterGestureDetector(),
        )
    );
  }
}