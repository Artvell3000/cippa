import 'package:flutter/material.dart';

import 'AppBarComponents/leading.dart';
import 'AppBarComponents/title.dart';
import 'Assets.dart';
import 'package:flutter_svg/flutter_svg.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        leading: const CippaLeadding(),
        title: const CippaAppBarTitle(),
      ),
      body: waterBody()
    );
  }
}

class waterBody extends StatelessWidget {
  const waterBody({
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
      child: Stack(
          children: [
            Positioned(
                child: Image.asset(
                    Assets.cippasMessage
                ),
            ),
            Positioned(
              child: Image.asset(
                  Assets.cippaTells
              ),
            ),
            Positioned(
              child: Image.asset(
                  Assets.potImg
              ),
            ),
          ],
        ),
    );
  }
}



