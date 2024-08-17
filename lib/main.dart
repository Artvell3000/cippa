import 'package:flutter/material.dart';

import 'AppBarComponents/leading.dart';
import 'AppBarComponents/title.dart';
import 'Assets.dart';

import 'CippaTellWidget.dart';
import 'VariantButton.dart';
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
          image: AssetImage(Assets.waterBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
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
              flex: 661,
              child: SizedBox()
          ),
          Expanded(
              flex: 321,
              child: VariantColumn()
          ),
          Expanded(
              flex: 132,
              child: SizedBox()
          ),
        ],
      ),
    );
  }
}

class VariantColumn extends StatelessWidget {
  const VariantColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
        const Expanded(
          flex:110,
          child: SizedBox()
          ),
          Expanded(
            flex:318,
            child: VariantButton(
            imgPath: Assets.potImg,
            padding: const EdgeInsets.only(top:0, bottom: 15, left: 10, right: 10),
            onPressed: (){
              print("click1");
            },
            )
          ),
          const Expanded(
            flex:76,
            child: SizedBox()
          ),
          Expanded(
            flex:318,
            child: VariantButton(
            imgPath: Assets.potImg,
            padding: const EdgeInsets.only(top:0, bottom: 15, left: 10, right: 10),
            onPressed: (){
              print("click2");
              },
          )),
          const Expanded(
              flex:131,
              child: SizedBox()
          ),
      ]
    );
  }
}



