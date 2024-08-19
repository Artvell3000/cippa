import 'package:flutter/material.dart';

import 'AppBarComponents/leading.dart';
import 'AppBarComponents/title.dart';
import 'QuestionWidget.dart';
import 'water_assets.dart';

import 'CippaTellWidget.dart';
void main() {
  runApp(const CippaWaterView());
}

class CippaWaterView extends StatelessWidget {
  const CippaWaterView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const CippaAppBarLeadding(),
        title: const CippaAppBarTitle(),
      ),
      body: const WaterBody()
    );
  }
}

class WaterBody extends StatelessWidget {
  const WaterBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.waterBackgroundPng),
          fit: BoxFit.cover,
        ),
      ),
      child: const Row(
        children: [
          Expanded(
            flex: 169,
              child: SizedBox()
          ),
          Expanded(
              flex: 637,
              child: CippaTellWidget()
          ),
          Expanded(
              flex: 1114,
              child: QuestionWidget()
          ),
        ],
      ),
    );
  }
}




